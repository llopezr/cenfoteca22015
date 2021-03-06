<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head><title>Cenfoteca | Rent - Create</title></head>


<form id="createRentForm" name="createRentForm" class="form-horizontal" role="form">
	<div class='form-group'>
		<div ng-class="{error: onError && createRentForm.email.$invalid}">
			<label class='col-sm-3 control-label'>Rent Type</label>
			<div class="col-sm-8">
				<select name="tipoalquiler" id="tipoalquiler" class="form-control"
					ng-model="requestObject.idTipoAlquiler"
					ng-options="ta.idTipoAlquiler as ta.tipo for ta in tipoAlquilerList"
					required>
				</select> 
				<span
					ng-show="onError && createRentForm.tipoalquiler.$error.required"
					class="help-inline">Required
				</span>
			</div>
		</div>
	</div>

	<div class='form-group'>
		<div ng-class="{error: onError && createRentForm.name.$invalid}">
			<label class='col-sm-3 control-label'>Name</label>
			<div class="col-sm-8">
				<input type="text" id="name" class="form-control"
					name="name" placeholder="Required" required
					ng-model="requestObject.name" 
				/> 
				<span
					ng-show="onError && createRentForm.name.$error.required"
					class="help-inline">Required
				</span>
			</div>
		</div>
	</div>

	<div class='form-group'>
		<div ng-class="{error: onError && createRentForm.description.$invalid}">
			<label class='col-sm-3 control-label'>Description</label>
			<div class="col-sm-8">
				<textarea id="description" class="form-control" rows="3"
					name="description" placeholder="Required" required
					ng-model="requestObject.description">
				</textarea>
				<span
					ng-show="onError && createRentForm.description.$error.required"
					class="help-inline">Required
				</span>
			</div>
		</div>
	</div>

	<div class='form-group'>
		<div ng-class="{error: onError && createRentForm.inputfile.$invalid}">
			<label class='col-sm-3 control-label'>Cover Image</label>
			
			<div class="col-sm-8">
				<input type="file" name="inputfile" required ng-file-select="onFileSelect($files)" >
				<span
					ng-show="onError && createRentForm.inputfile.$error.required"
					class="help-inline">Required
				</span>
			</div>

		</div>
	</div>
	
	<button class="btn btn-primary" ng-click="saveRent($event)">Create</button>
	<!-- clear button todo -->
	
</form>
