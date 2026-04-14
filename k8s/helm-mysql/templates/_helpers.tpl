{{- define "mysql.name" -}}
mysql
{{- end }}

{{- define "mysql.fullname" -}}
{{ .Release.Name }}
{{- end }}

{{- define "mysql.selectorLabels" -}}
app: {{ include "mysql.name" . }}
release: {{ .Release.Name }}
{{- end }}

{{- define "mysql.labels" -}}
{{ include "mysql.selectorLabels" . }}
{{- end }}

{{- define "mysql.headlessServiceName" -}}
{{ printf "%s-headless" (include "mysql.fullname" .) }}
{{- end }}
