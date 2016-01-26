<?php echo $header; ?>
<script type="text/javascript" src="catalog/view/javascript/angular.js"></script>
<script type="text/javascript" src="catalog/view/javascript/want_tosell.js"></script>
<div class="container" ng-app="cartApp">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <?php if ($attention) { ?>
  <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $attention; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <?php if ($success) { ?>
  <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <?php if ($error_warning) { ?>
  <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  	<div class="row" ng-controller="WantToSellController as wantToSell">

	<div id="content" class="col-sm-12">

		<div class="alert alert-info"><i class="fa fa-info-circle"></i>&nbsp;
			Current we are listing <strong>Mobile phones</strong> only, We are experimenting with other categories also :)
	    	<button type="button" class="close" data-dismiss="alert">&times;</button>
	  	</div>

	  	<h4 class="m-t-1">Choose your product and fill the necessary details, that you expect while you are buying same product.</h4>
	  
	  	<div class="m-t-2 col-sm-8 col-sm-offset-2">
	  		
			<form action="" method="post">

			  <div class="form-group row">
			    <label for="input1" class="col-sm-2 form-control-label">Product Name</label>
			    <div class="col-sm-10">
			      <input type="text" name"product[name]" class="form-control" id="input1" placeholder="Product name">
			    </div>
			  </div>

			  <div class="form-group row">
			  	<label class="col-sm-2">Choose Brand</label>
			  	<div class="col-sm-10">
				  	<select class="form-control" ng-change="changeBrandModel()" ng-model="brand">
				  		<option ng-repeat="brand in wantToSell.brands" >{{brand}}</option>
				  	</select>	
			  	</div>	
			  </div>

			  <div class="form-group row" ng-show="wantToSell.showModels">
			  	<label class="col-sm-2">Choose Model</label>
			  	<div class="col-sm-10">
				  	<select class="form-control">
				  		<option ng-repeat="model in wantToSell.models">{{model}}</option>
				  	</select>	
			  	</div>	
			  </div>

			  <div class="form-group row">
			    <label class="col-sm-2 form-control-label">Puchase date</label>
			    <div class="col-sm-10 row">
			    	<div class="col-sm-2">
			    		<select class="form-control">
				  			<option ng-repeat="month in wantToSell.months" >{{month}}</option>
				  		</select>	
			    	</div>
			      	<div class="col-sm-3">
			    		<select class="form-control col-sm-3">
					  		<option ng-repeat="year in wantToSell.years()" >{{year}}</option>
					  	</select>	
			    	</div>

				  	
			    </div>
			  </div>			  

			  <div class="form-group row">
			    <label class="col-sm-2">With in Warrenty</label>
			    <div class="col-sm-10">
			      	<div class="radio">
			        	<label class="c-input c-radio">
						  <input id="radio1" name="radio1" type="radio" checked="">
						  <span class="c-indicator"></span>
						 Yes
						</label>
						<label class="c-input c-radio">
						  <input id="radio2" name="radio1" type="radio">
						  <span class="c-indicator"></span>
						  No
						</label>
					</div>	
			    </div>
			  </div>

				<div class="form-group row">
				    <label class="col-sm-2">Bill/Invoice Available</label>
				    <div class="col-sm-10">
				      <div class="radio">
				       	<label class="c-input c-radio">
						  <input id="radio1" name="radio" type="radio" checked="">
						  <span class="c-indicator"></span>
						 Yes
						</label>
						<label class="c-input c-radio">
						  <input id="radio2" name="radio" type="radio">
						  <span class="c-indicator"></span>
						  No
						</label>
				      </div>
				     	
				    </div>
				</div>

			  <div class="form-group row">
			    <label class="col-sm-2">With accessories</label>
			    <div class="col-sm-10">
			      <div class="checkbox" ng-repeat="accessory in wantToSell.accessories">
			        <label>
			          <input type="checkbox" > {{accessory.text}} &nbsp; <i class="fa fa-{{accessory.icon}}"></i>
			        </label>
			      </div>
			    </div>
			  </div>

			  <div class="form-group row">
			    <label class="col-sm-2">Photos/Images</label>
			    <div class="col-sm-10">
			      
				        <input class="form-control form-control-sm" id="uploadFile" placeholder="Choose File" disabled="disabled" />
						<div class="fileUpload btn btn-info btn-sm">
						    <span>Upload</span>
						    <input id="uploadBtn" type="file" class="upload" />
						</div>
			     
			    </div>
			  </div>

			  <div class="form-group row">
				    <label for="input1" class="col-sm-2 form-control-label">Price (Rupee)</label>
				    <div class="col-sm-10">

				    	<div class="input-group">

					      <div class="input-group-addon"><?php echo $currency['symbol_left']; ?></div>
					      <input type="number" class="form-control" id="exampleInputAmount" placeholder="Resell Price">
					    </div>
				    </div>
				  </div>

			  <div class="form-group row">
			    <div class="col-sm-offset-2 col-sm-10">
			      <button type="submit" class="btn btn-primary">Sell it</button>
			    </div>
			  </div>

			</form>

			</div>
	  	</div>
	</div>
</div>
<?php echo $footer; ?>

