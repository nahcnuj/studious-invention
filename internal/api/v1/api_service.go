package impl

import (
	openapi "github.com/nahcnuj/studious-invention/internal/api/v1-default"
)

type ApiService struct {
}

func NewApiService() openapi.DefaultApiServicer {
	return &ApiService{}
}
