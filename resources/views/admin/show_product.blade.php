<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    @include('admin.css')

    <style type="text/css">
        .div_center
        {
           margin: auto;
           width: 50%;
           border: 3px solid purple;
           text-align: center;
           margin-top: 40px;
        }
        .h2_font
        {
            font-size: 40px;
            padding-top: 20px;
            text-align: center;
        }
        .img_size
        {
           width: 150px;
           height: 150px;
        }
        .th_color
        {
           background-color: purple; 
        }
        .th_space
        {
            padding: 30px;
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

                <h2 class="h2_font">Tous les produits</h2>

                <table class="div_center">
                    <tr class="th_color">
                        <th class="th_space">Product title</th>
                        <th class="th_space">Description</th>
                        <th class="th_space">Quantité</th>
                        <th class="th_space">Catégorie</th>
                        <th class="th_space">Prix</th>
                        <th class="th_space">Discount price</th>
                        <th class="th_space">Image du produit</th>
                        <th class="th_space">Supprimer</th>
                        <th class="th_space">Modifier</th>
                    </tr>

                    @foreach($product as $product)

                    <tr>
                        <td>{{$product->title}}</td>
                        <td>{{$product->description}}</td>
                        <td>{{$product->quantity}}</td>
                        <td>{{$product->category}}</td>
                        <td>{{$product->price}}</td>
                        <td>{{$product->discount_price}}</td>
                        <td>

                            <img class="img_size" src="/product/{{$product->image}}">

                        </td>
                        <td>
                            <a class="btn btn-danger" onclick="return confirm ('Voulez-vous vraiment supprimer ce produit ?')" href="{{url('delete_product',$product->id)}}">Supprimer</a>
                        </td>
                        <td>
                            <a class="btn btn-success" href="{{url('update_product',$product->id)}}">Modifier</a>
                        </td>
                    </tr>

                    @endforeach

                </table>



            </div>
        </div>    
    
    <!-- container-scroller -->
    <!-- plugins:js -->
    @include('admin.script')
    <!-- End custom js for this page -->
  </body>
</html>