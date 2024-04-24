
#!/bin/bash
sudo su 
sudo apt-get -y update

sudo apt-get -y install apache2


sudo service apache2 start
                                
# Create index.html file with your custom HTML
sudo echo '
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title></title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

  </head>

  <body>
    
  	<!-- DOCUMENTATION NAVBAR The inverse setting allows for a darker nav bar flavour -->

  	<nav class="navbar navbar-default navbar-inverse navbar-fixed-top">

      <!-- Inside of a Container -->
      <div class="container-fluid">
          <div class="navbar-header">
            <a class="navbar-brand" href="#">Welcome</a>
          </div>

          <!-- Anything inside of collapse navbar-collapse goes into the "hamburger" -->
          <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
            <!-- <li class="active"><a href="#">Link <span class="sr-only">(current)</span></a></li> -->
            <li><a target="_blank" href="SignIn.html">Sign In</a></li>
          </div>
      </div><!-- /.container-fluid -->
    </nav>


  <!-- OTHER STUFF ON THE PAGE -->

  <div class="container">
    <div class="jumbotron">

       
        <h4>Welcome to the Crystal Web Application deploy landing page</h4>
        
        <p>Welcome to your Bootstrap Project: Coffee Lover</p>
        <p>You will recreate this webpage and an additional Form Page</p>
        <p>Just follow the instruction steps here to re-create these webpages</p>

        <ol>
            <li>Create a general landing page with JumboTron</li>
            <li>Next create a Navbar on the page that links to another html file</li>
            <li>Add two paragraphs of lorem-ipsum below the jumbotron</li>
            <li>Next use the Grid system to add in the thumbnail pictures of coffee: https://stocksnap.io/search/coffee.  You will need to use the thumbnail class for this</li>
                <ul style="list-style-type:circle">
                    <li style="color:blue">
                        <a href="https://cdn.stocksnap.io/img-thumbs/960w/coffee-house_KKVFG3UQ30.jpg">One</a>
                    </li>
                    <li style="color:blue">
                        <a href="https://cdn.stocksnap.io/img-thumbs/960w/cappuccino-coffee_HLRHCQPIGN.jpg">Two</a>
                    </li>
                    <li style="color:blue">
                        <a href="https://cdn.stocksnap.io/img-thumbs/960w/Coffee-art_GZCFF9JJE7.jpg">Three</a>    
                    </li>
                    <li style="color:blue">
                        <a href="https://cdn.stocksnap.io/img-thumbs/960w/barista-latte_JTML1ADOPE.jpg">Four</a> 
                    </li>
                    <li style="color:blue">
                        <a href="https://cdn.stocksnap.io/img-thumbs/960w/barista-latte_UURYRCF9I6.jpg">Five</a>
                    </li>
                    <li style="color:blue">
                        <a href="https://cdn.stocksnap.io/img-thumbs/960w/barista-latte_V7HJ1MBGUP.jpg">Six</a>
                    </li>

                    

                </ul>
            <p><small>Here are the image links</small></p>
            <li>Next make sure that the largest settings you have 3 columns of pictures.  On the smallest screen settings you should have 2 columns.  Its up to you where you want to change</li>
            <li>Next create another html file for the sign up page.</li>
            <li>Next create a Form on this Sign Up page with Email, Password, and a Check Box.</li>
        </ol>
        
        <p>That's it. Feel free to play around with project and style if more to your linking.  The main focuses of this project are the uses of NavBar, Jumbotron, Form, Container and the Grid System.</p>
 
        </div>
  </div>
 
  <!-- Container Class   -->
  <div class="container">
    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
  </div>

  #<!-- Coffee picture configuration  -->
  <div class="container">
    <h2 style="color:green">Pictures of Coffee</h2>

    <div class="row">
      <div class="col-lg-4 col-xs-6 thumbnail"><img src="https://d2lm6fxwu08ot6.cloudfront.net/img-thumbs/960w/04LDEYRW59.jpg" alt=""></div>
      <div class="col-lg-4 col-xs-6 thumbnail"><img  src="https://d2lm6fxwu08ot6.cloudfront.net/img-thumbs/960w/90V03Q5Y60.jpg" alt=""></div>
      <div class="col-lg-4 col-xs-6 thumbnail"><img  src="https://d2lm6fxwu08ot6.cloudfront.net/img-thumbs/960w/O83SF2RB6D.jpg" alt=""></div>
      <div class="col-lg-4 col-xs-6 thumbnail"><img  src="https://d2lm6fxwu08ot6.cloudfront.net/img-thumbs/960w/5JVPSVP7EI.jpg" alt=""></div>
      <div class="col-lg-4 col-xs-6 thumbnail"><img  src="https://d2lm6fxwu08ot6.cloudfront.net/img-thumbs/960w/C5Y10KIIHA.jpg" alt=""></div>
      <div class="col-lg-4 col-xs-6 thumbnail"><img  src="https://d2lm6fxwu08ot6.cloudfront.net/img-thumbs/960w/YSSFRY5B25.jpg" alt=""></div>

    </div>
</body>
</html>


' > /var/www/html/index.html

sudo service apache2 restart

                           