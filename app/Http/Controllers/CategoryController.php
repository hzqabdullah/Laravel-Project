<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;

class CategoryController extends Controller
{
    public function category()
    {
        return view('category.category');
    }

    public function addCategory(Request $request)
    {
        $this->validate($request, [
            'category' => 'required'
        ]);

        // return 'validation passed'; display result

        $category = new Category;
        $category->category = $request->input('category');
        $category->save();

        return redirect('/category')->with('response', 'Category added successfully');


    }
}
