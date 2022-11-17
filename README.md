# Torc Project
### Running the application
`ruby run_tax.rb <filename>.txt`
eq.: `ruby run_tax.rb input1.txt`
#### Files:
- input1.txt
- input2.txt
- input3.txt
  
***
### Testing  
`rspec spec/<filename>.rb` - individual test
`rspec spec` - run all tests
  
### Thought Process
I abstracted the application into 3 components:

- `Input` - We take the file, process it and turn it readable
- `Tax` - Here, we take care of the tax calculation processes
- `Print` - Print the products with your calculated values

### Conclusions
Thank you for the opportunity!