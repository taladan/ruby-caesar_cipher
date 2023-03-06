# ruby-caesar_cipher

Working through the [TOP](https://www.theodinproject.com) section on Ruby fundamentals, the first project to work on is to create a [caesar cipher](https://www.theodinproject.com/lessons/ruby-caesar-cipher).

We have to have a function such that:

- A user can pass a string through with punctuation and a shift count
- The function will modify only alphabet characters `[a-z][A-Z]` ignoring punctuation and space characters
- The function will wrap the character shift from `z` to `a` and `Z` to `A` when shifting past the end of the alphabet
- The function will not change the case of the characters

## Example

```ruby
>caesar_cipher("What a string!", 5)
=> "Bmfy f xywnsl!"
```
