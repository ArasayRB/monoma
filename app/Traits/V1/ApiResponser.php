<?php

namespace App\Traits\V1;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Pagination\LengthAwarePaginator;
use Illuminate\Http\Response;
use Illuminate\Http\JsonResponse;

trait ApiResponser
{
    /**
     * Build Api Response
     *
     * @param  array  $data
     * @param  int  $statusCode
     * @param  string  $message
     * @return JsonResponse
     */
    public function buildApiResponse(string $message = '', int $statusCode = Response::HTTP_OK): array
    {
        if (empty($message)) {
            $message = Response::$statusTexts[$statusCode];
        }

        return [
            'meta'=>[
                'message' => $message,
            ],
        ];
    }

    protected function successResponse($data, $code)
    {
        return response()->json($data, $code);
    }

    protected function successDataResponse($data, $code)
    {
        return response()->json(['data' => $data, 'code' => $code]);
    }

    protected function errorResponse($message, $code, $data = [])
    {
        return response()->json(['error' => $message, 'code' => $code, 'data' => $data], $code);
    }

    protected function showData($data, $code = 200)
    {
        return $this->successResponse($data, $code);
    }


    /**
     * Error Response
     *
     * @param  array  $errors
     * @param  int  $statusCode
     * @param  string  $message
     * @return JsonResponse
     */
    public function errorApiResponse(array $errors = [], int $statusCode = Response::HTTP_INTERNAL_SERVER_ERROR, string $message = 'An error occurred while processing your request.'): JsonResponse
    {
        $response = [];
        $response['meta']['success'] = false;
        if (count($errors) > 0)
            $response['meta']['errors'] = $errors;

        return response()->json($response, $statusCode);
    }

    /**
     * OK Response
     *
     * @param  array  $errors
     * @param  int  $statusCode
     * @param  string  $message
     * @return JsonResponse
     */
    public function successApiResponse(array $data = [], int $statusCode = Response::HTTP_OK, string $message = 'Success'): JsonResponse
    {
        $response = [];
        $response['meta']['success'] = true;
        $response['meta']['errors'] = [];
        if (count($data) > 0)
            $response['data'] = $data;

        return response()->json($response, $statusCode);
    }

    /**
     * Response with status code 400.
     *
     * @param  array  $data
     * @param  string  $message
     * @return JsonResponse
     */
    public function badRequestApiResponse(array $data, string $message = ''): JsonResponse
    {
        return $this->errorApiResponse($data, Response::HTTP_BAD_REQUEST, $message);
    }

    /**
     * Response with status code 422.
     *
     * @param  array  $data
     * @param  string  $message
     * @return JsonResponse
     */
    public function unprocessedRequestApiResponse(array $data, string $message = ''): JsonResponse
    {
        return $this->errorApiResponse($data, Response::HTTP_UNPROCESSABLE_ENTITY, $message);
    }

    /**
     * Response with status code 500.
     *
     * @param  array  $data
     * @param  string  $message
     * @return JsonResponse
     */
    public function serverErrorApiResponse(array $data, string $message = ''): JsonResponse
    {
        return $this->errorApiResponse($data, Response::HTTP_INTERNAL_SERVER_ERROR, $message);
    }

    /**
     * Response with status code 401.
     *
     * @param  array  $data
     * @param  string  $message
     * @return JsonResponse
     */
    public function unauthorizedApiResponse(array $data, string $message = ''): JsonResponse
    {
        return $this->errorApiResponse($data, Response::HTTP_UNAUTHORIZED, $message);
    }

    /**
     * Response with status code 200.
     *
     * @param  array  $data
     * @param  string  $message
     * @return JsonResponse
     */
    public function okApiResponse(array $data, string $message = ''): JsonResponse
    {
        return $this->successApiResponse($data, Response::HTTP_OK, $message);
    }
}