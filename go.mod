module github.com/nahcnuj/studious-invention

go 1.17

require (
	entgo.io/ent v0.9.1
	github.com/nahcnuj/studious-invention/internal/api v0.0.0-00010101000000-000000000000
)

require (
	github.com/google/uuid v1.3.0 // indirect
	github.com/gorilla/mux v1.7.3 // indirect
)

replace github.com/nahcnuj/studious-invention/internal/api => ./internal/api
