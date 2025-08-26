{{- define "chart.labels" }}
date: {{ now | htmlDate }}
app: {{ .Values.app.name }}
{{- end}}