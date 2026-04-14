{{- define "node-app.name" -}}
node-app
{{- end }}

{{- define "node-app.fullname" -}}
{{ .Release.Name }}
{{- end }}

{{- define "node-app.labels" -}}
app: node-app
release: {{ .Release.Name }}
{{- end }}

{{- define "node-app.selectorLabels" -}}
app: {{ include "node-app.name" . }}
release: {{ .Release.Name }}
{{- end }}
