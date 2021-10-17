package openapi

type ApiService struct {
}

func NewApiService() DefaultApiServicer {
	return &ApiService{}
}
