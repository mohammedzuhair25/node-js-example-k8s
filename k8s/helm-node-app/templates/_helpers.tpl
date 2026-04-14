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

{{- define "mysql-dev-auth.name" -}}
mysql-dev
{{- end }}

{{- define "mysql-dev-auth.authSecretName" -}}
{{- $auth := get .Values "auth" | default dict -}}
{{- default (printf "%s-auth" (include "mysql-dev-auth.name" .)) (get $auth "existingSecret") -}}
{{- end }}

{{- define "mysql-dev-auth.selectorLabels" -}}
app: {{ include "mysql-dev-auth.name" . }}
release: {{ .Release.Name }}
{{- end }}
