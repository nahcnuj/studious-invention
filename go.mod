module github.com/nahcnuj/studious-invention

go 1.17

require (
	entgo.io/ent v0.9.1
	github.com/nahcnuj/studious-invention/internal/api/v1-default v0.0.0-00010101000000-000000000000
)

require github.com/gorilla/mux v1.7.3 // indirect

replace github.com/nahcnuj/studious-invention/internal/api/v1-default => ./internal/api/v1-default
