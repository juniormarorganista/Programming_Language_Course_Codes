def fizzbuzz(numero):
    div3 = numero % 3 == 0
    div5 = numero % 5 == 0

    if (div3 and div5):
        return "FizzBuzz"
    elif (div3):
        return "Fizz"
    elif (div5):
        return "Buzz"
    else:
        return numero 
