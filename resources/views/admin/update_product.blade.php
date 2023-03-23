<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->

    <base href="/public">

    @include('admin.css')

    <style type="text/css">
        .div_center
        {
           text-align: center;
           padding-top: 40px; 
        }
        .font_size
        {
            font-size: 40px;
            padding-bottom: 40px;
        }
        .input_color
        {
           color: purple;
        }
        .center
        {
           margin: auto;
           width: 50%;
           text-align: center;
           margin-top: 30px;
           border: 3px solid purple;   
        }
        label
        {
            display: inline-block;
            width: 200px;
        }
        .div_design
        {
            padding-bottom: 15px;
        }

    </style>

  </head>
  <body>
  <div class="container-scroller">
        <!-- partial:partials/_sidebar.html -->
        @include('admin.sidebar')
        <!-- partial -->
        @include('admin.header')
        <!-- partial -->
        <div class="main-panel">
            <div class="content-wrapper">

            @if(session()->has('message'))

                <div class="alert alert-success">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">X</button>
                    {{session()->get('message')}}

                </div>

                @endif

                <div class="div_center">

                    <h1 class="font_size">Modifier un produit</h1>

                        <form action="{{url('/update_product_confirm',$product->id)}}" method="POST" enctype="multipart/form-data">

                        @csrf

                        <div class="div_design">

                            <label>Titre du produit :</label>
                            <input class="input_color" type="text" name="Ptitle" placeholder="Écrire le titre du produit" required="" value="{{$product->title}}">
                        </div>

                        <div class="div_design">

                            <label>Description du produit :</label>
                            <input class="input_color" type="text" name="Pdescription" placeholder="Écrire la description du produit" required="" value="{{$product->description}}">
                        </div>

                        <div class="div_design">

                            <label>Prix du produit :</label>
                            <input class="input_color" type="number" min="0" name="Pprice" placeholder="Écrire le prix du produit" required="" value="{{$product->price}}">
                        </div>

                        <div class="div_design">

                            <label>Prix action du produit :</label>
                            <input class="input_color" type="number" name="Pdiscount" placeholder="Écrire le Prix action du produit" value="{{$product->discount_price}}">
                        </div>

                        <div class="div_design">

                            <label>Quantité du produit :</label>
                            <input class="input_color" type="number" name="Pquantity" placeholder="Écrire la Quantité du produit" requirde="" value="{{$product->quantity}}">
                        </div>

                        <div class="div_design">

                            <label>Catégorie du produit :</label>
                            <select class="input_color" name="Pcategory" required="">
                                <option value="{{$product->category}}" selected="">{{$product->category}}</option>

                                @foreach($category as $category)

                                <option value="{{$category->category_name}}">{{$category->category_name}}</option>

                                @endforeach

  
                            </select>
                        </div>

                        <div class="div_design">

                            <label>Image actuelle du produit :</label>
                            <img style="margin:auto" height="100" width="100" src="/product/{{$product->image}}" alt="">
                        </div>

                        <div class="div_design">

                            <label>Changer l'image du produit :</label>
                            <input class="input_color" type="file" name="Pimage" placeholder="Écrire la Catégorie du produit"> 
                        </div>

                        <div>

                            <input type="submit" value="Modifier" class="btn btn-primary">
                        </div>

                        </form>
                </div>

            </div>
        </div>
        
    <!-- container-scroller -->
    <!-- plugins:js -->
    @include('admin.script')
    <!-- End custom js for this page -->
  </body>
</html>