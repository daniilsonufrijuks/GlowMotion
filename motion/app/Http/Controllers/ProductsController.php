<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Product;
use Illuminate\Http\Request;
use Inertia\Inertia;

class ProductsController extends Controller
{
    public function getHeadlightsProducts(Request $request): \Illuminate\Http\JsonResponse
    {
        //global $request;
        $query = Product::where('category_id', '1');

        // Apply filters based on query parameters
        // Handle price_min only if not null
        // Check if price_min is provided
        // Apply filters only if values are not null or empty
        if ($request->filled('price_min')) {
            $query->where('price', '>=', $request->input('price_min'));
        }

        if ($request->filled('price_max')) {
            $query->where('price', '<=', $request->input('price_max'));
        }

        $this->applyFilters($query, $request);

        // Fetch the filtered results
        $products = $query->get(['id', 'name', 'price', 'description', 'image']);

        return response()->json($products);
    }

    public function getTaillightslightsProducts(Request $request): \Illuminate\Http\JsonResponse
    {
        //global $request;
        $query = Product::where('category_id', '2');

        // Apply filters based on query parameters
        // Handle price_min only if not null
        // Check if price_min is provided
        // Apply filters only if values are not null or empty
        if ($request->filled('price_min')) {
            $query->where('price', '>=', $request->input('price_min'));
        }

        if ($request->filled('price_max')) {
            $query->where('price', '<=', $request->input('price_max'));
        }

        $this->applyFilters($query, $request);

        // Fetch the filtered results
        $products = $query->get(['id', 'name', 'price', 'description', 'image']);

        return response()->json($products);
    }


    public function getFoglightslightsProducts(Request $request): \Illuminate\Http\JsonResponse
    {
        //global $request;
        $query = Product::where('category_id', '3');

        // Apply filters based on query parameters
        // Handle price_min only if not null
        // Check if price_min is provided
        // Apply filters only if values are not null or empty
        if ($request->filled('price_min')) {
            $query->where('price', '>=', $request->input('price_min'));
        }

        if ($request->filled('price_max')) {
            $query->where('price', '<=', $request->input('price_max'));
        }

        $this->applyFilters($query, $request);

        // Fetch the filtered results
        $products = $query->get(['id', 'name', 'price', 'description', 'image']);

        return response()->json($products);
    }


    public function show($id): \Illuminate\Http\JsonResponse
    {
        $products = Product::find($id, ['id', 'name', 'price', 'description', 'image', 'category_id']);

        if (!$products) {
            return response()->json(['error' => 'Product not found'], 404);
        }
        return response()->json($products);
    }

//     for search bar for suggestions
    public function search(Request $request)
    {
        $query = $request->input('query');

        $products = Product::where('name', 'LIKE', "%{$query}%")
            ->orWhere('description', 'LIKE', "%{$query}%")
            ->get();
        return response()->json($products);
    }

    private function applyFilters($query, Request $request)
    {
        if ($request->filled('price_min')) {
            $query->where('price', '>=', $request->input('price_min'));
        }

        if ($request->filled('price_max')) {
            $query->where('price', '<=', $request->input('price_max'));
        }

        if ($request->filled('brand_id')) {
            $query->where('brand_id', $request->input('brand_id'));
        }

        if ($request->filled('category_id')) { // Additional safeguard if you want dropdown to filter all at once
            $query->where('category_id', $request->input('category_id'));
        }
    }

    public function getBestsellers(Request $request): \Illuminate\Http\JsonResponse
    {
        // You can later filter by ->where('is_bestseller', 1)
        $products = Product::all(['id', 'name', 'price', 'description', 'image']);

        return response()->json($products);
    }


}
