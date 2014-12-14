<div class="row">
	<div id="content">
		<h1>Please login</h1>
		&nbsp;
		{{if .flash.error}}
		<h3>{{.flash.error}}</h3>
		&nbsp;
		{{end}}
		{{if .Errors}}
			{{range $rec := .Errors}}
		<h3>{{$rec}}</h3>
			{{end}}
		&nbsp;
		{{end}}
	</div>
</div>