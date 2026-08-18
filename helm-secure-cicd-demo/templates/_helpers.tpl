{{/*
Expand the name of the chart.
*/}}
{{- define "secure-cicd-demo.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
*/}}
{{- define "secure-cicd-demo.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- include "secure-cicd-demo.name" . }}
{{- end }}
{{- end }}

{{/*
Common labels.
*/}}
{{- define "secure-cicd-demo.labels" -}}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version | replace "+" "_" }}
app.kubernetes.io/name: {{ include "secure-cicd-demo.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels.
*/}}
{{- define "secure-cicd-demo.selectorLabels" -}}
app.kubernetes.io/name: {{ include "secure-cicd-demo.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}