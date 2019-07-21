<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Input;
use Carbon\Carbon;
use App\User;
use App\Book;
class AuthController extends Controller
{
    /**
     * Create user
     *
     * @param  [string] name
     * @param  [string] email
     * @param  [string] password
     * @param  [string] password_confirmation
     * @return [string] message
     */
    public function signup(Request $request)
    {
        $request->validate([
            'name' => 'required|string',
            'email' => 'required|string|email|unique:users',
            'password' => 'required|string|confirmed'
        ]);
        $user = new User([
            'name' => $request->name,
            'email' => $request->email,
            'password' => bcrypt($request->password)
        ]);
        $user->save();
        return response()->json([
            'message' => 'Successfully created user!'
        ], 201);
    }
  
    /**
     * Login user and create token
     *
     * @param  [string] email
     * @param  [string] password
     * @param  [boolean] remember_me
     * @return [string] access_token
     * @return [string] token_type
     * @return [string] expires_at
     */
    public function login(Request $request)
    {
        $request->validate([
            'email' => 'required|string|email',
            'password' => 'required|string',
            'remember_me' => 'boolean'
        ]);
        $credentials = request(['email', 'password']);
        if(!Auth::attempt($credentials))
            return response()->json([
                'message' => 'Unauthorized'
            ], 401);
        $user = $request->user();
        $tokenResult = $user->createToken('Personal Access Token');
        $token = $tokenResult->token;
        if ($request->remember_me)
            $token->expires_at = Carbon::now()->addWeeks(1);
        $token->save();
        return response()->json([
            'access_token' => $tokenResult->accessToken,
            'token_type' => 'Bearer',
            'expires_at' => Carbon::parse(
                $tokenResult->token->expires_at
            )->toDateTimeString()
        ]);
    }
  
    /**
     * Logout user (Revoke the token)
     *
     * @return [string] message
     */
    public function logout(Request $request)
    {
        $request->user()->token()->revoke();
        return response()->json([
            'message' => 'Successfully logged out'
        ]);
    }
  
    /**
     * Get the authenticated User
     *
     * @return [json] user object
     */
    public function user(Request $request)
    {
        return response()->json($request->user());
    }

      public function addBooks(Request $request){
       
         if ($request->user()->id == "") {
        return response()->json(['error' => 'Pls login to add book.'], 403);
      }


  $request->validate([
            'bookTitle' => 'required|string',
            'author' => 'required|string',
            'price' => 'integer'
        ]);

    $checkIfBookExist=Book::where('user_id',Auth::user()->id)
    ->where('bookTitle',$request->bookTitle)->first();
    if($checkIfBookExist){
                 return response()->json(['warning' => 'You have already added this book'], 400);
    }
        $book = new Book();
        $book->bookTitle = Input::get('bookTitle');
        $book->author = Input::get('author');
        $book->price = Input::get('price');
        $book->user_id = Auth::user()->id;
        $book->save();
        if($book){
            return response()->json('Book created Successfully');
        }else{
             return response()->json(['error' => 'Book could not be created at this moment'], 400);
        }
  }


  public function allBooks(){

    $books=Book::all();
    if(count($books) >=1){
    return $books;
  }
  return response()->json(['warning' => 'no book found'], 400);
  }



public function updateBook(Request $request,$bookId){

     $book =book::find($bookId);
     if($book){
     if (Auth::user()->id != $book->user->id) {
        return response()->json(['error' => 'You can only edit books you created.'], 403);
      } 

       $updateBook = Book::where('id',$bookId)
            ->update([
            'bookTitle'=> $request->bookTitle,
            'author'=>$request->author,
            'price'=>$request->price
            ]);

            if($updateBook){
              return response()->json(['success' => 'Book updated successfully'], 201);
            }
        return response()->json(['error' => 'Book update failed'], 400);
  }
  return response()->json(['error' => 'Book not found'], 400);
   }


public function destroyBook($bookId)
    {
     $book =book::find($bookId);
      if($book){
     if (Auth::user()->id != $book->user->id) {
        return response()->json(['error' => 'You can only delete books you created.'], 403);
      } 
        $findBook = Book::find($bookId);
        if($findBook){
        if($findBook->delete()){
          return response()->json([
    'success' => 'Book deleted successfully',
],200);
        }
   return response()->json([
    'error' => 'An attempt to delete book failed',
],401);
    
    }
     return response()->json([
    'error' => 'The selected book id does not exist',
],401);
}
  return response()->json(['error' => 'Book not found'], 400);
}


public function myBooks(){

$books =User::find(Auth::user()->id)->books;

if($books !=''){
    return $books;
}
  return response()->json(['error' => 'Books not found,Please add more books'], 400);
}

public function readBook($bookId){
$bookDetail=Book::find($bookId);
if($bookDetail !=''){
    return response()->json([
            'book Title' => $bookDetail->bookTitle,
            'book Author' => $bookDetail->author,
            'book Price' => $bookDetail->price
        ], 201);
}
  return response()->json(['error' => 'Books not found,Please add more books'], 400);

}

}
