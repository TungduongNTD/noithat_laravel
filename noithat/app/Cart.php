<?php

use App\Product;

class Cart
{
    public $items = [];
    public $totalQty = 0;
    public $totalPrice = 0.0;

    public function __construct($oldCart = null)
    {
        if ($oldCart) {
            $this->items = $oldCart->items;
            $this->totalQty = $oldCart->totalQty;
            $this->totalPrice = $oldCart->totalPrice;
        }
    }

    public function add(Product $item, int $id): void
    {
        $cartItem = [
            'qty' => 0,
            'price' => $item->unit_or_promotion_price,
            'unit_price' => $item->unit_price,
            'promotion_price' => $item->promotion_price,
            'item' => $item
        ];

        if (isset($this->items[$id])) {
            $cartItem = $this->items[$id];
        }

        $cartItem['qty']++;
        $item->unit_or_promotion_price = $item->promotion_price ?: $item->unit_price;
        $cartItem['price'] = $item->unit_or_promotion_price * $cartItem['qty'];

        $this->items[$id] = $cartItem;
        $this->totalQty++;
        $this->totalPrice += $item->unit_or_promotion_price;
    }

    public function reduceByOne(int $id): void
    {
        if (!isset($this->items[$id])) {
            return;
        }

        $this->items[$id]['qty']--;
        $this->items[$id]['price'] -= $this->items[$id]['item']->unit_or_promotion_price;
        $this->totalQty--;
        $this->totalPrice -= $this->items[$id]['item']->unit_or_promotion_price;

        if ($this->items[$id]['qty'] <= 0) {
            unset($this->items[$id]);
        }
    }
}
