{{- define "ddm-architecture.image" -}}
{{- if eq .Values.image.version "latest" -}}
{{ .Values.image.repository }}-{{ .Values.image.branch }}:{{ .Values.image.tag }}
{{- else -}}
{{ .Values.image.name }}:{{ .Values.image.version }}
{{- end -}}
{{- end -}}
