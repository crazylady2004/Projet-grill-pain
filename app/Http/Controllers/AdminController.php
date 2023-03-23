<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Category;

use App\Models\Product;

use LDAP\Result;

class AdminController extends Controller
{
    public function view_category()
    {
        $data=category::all(); 

        return view('admin.category', compact('data'));
    }

    public function add_category(Request $request)
    {
        $data=new category;

        $data->category_name=$request->category;

        $data->save();

        return redirect()->back()->with('message', 'Catégorie ajoutée avec succès !');
    }

    public function delete_category($id)
    {
        $data=category::find($id);

        $data->delete();

        return redirect()->back()->with('message','Catégorie supprimée avec succès !');
    }

    public function view_product()
    {
        $category=category::all();
        return view('admin.product', compact('category'));
    }

    public function add_product(Request $request)
    {
        $product=new product;

        $product->title=$request->Ptitle;
        $product->description=$request->Pdescription;
        $product->price=$request->Pprice;
        $product->discount_price=$request->Pdiscount;
        $product->quantity=$request->Pquantity;
        $product->category=$request->Pcategory;
        $image=$request->Pimage;

        $imagename=time().'.'.$image->getClientOriginalExtension();

        $request->Pimage->move('product',$imagename);

        $product->image=$imagename;

        $product->save();

        return redirect()->back()->with('message','Produit ajouté avec succès !');
    }

    public function show_product()
    {
        $product=product::all();
        return view('admin.show_product',compact('product'));
    }

    public function delete_product($id)
    {
        $product=product::find($id);

        $product->delete();

        return redirect()->back()->with('message','Produit supprimé avec succès !');
    }

    public function update_product($id)
    {
        $product=product::find($id);

        $category=category::all();

        return view('admin.update_product',compact('product','category'));
    }

    public function update_product_confirm(Request $request,$id)
    {
        $product=Product::find($id);

        $product->title=$request->Ptitle;
        $product->description=$request->Pdescription;
        $product->price=$request->Pprice;
        $product->discount_price=$request->Pdiscount;
        $product->quantity=$request->Pquantity;
        $product->category=$request->Pcategory;
        
        $image=$request->Pimage;

        if($image)
        {
            $imagename=time().'.'.$image->getClientOriginalExtension();

            $request->Pimage->move('product',$imagename);
    
            $product->image=$imagename; 
        }

        $product->save();

        return redirect()->back()->with('message','Produit modifié avec succès !');
    }
}
