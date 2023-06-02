# Vonage JWT Generator for Python

This package provides functionality to generate a JWT in Python code.

It is used by the [Vonage Python SDK](https://github.com/Vonage/vonage-python-sdk).

## Installation

Install from the Python Package Index with pip:

```bash
pip install vonage-jwt
```

## Usage

This JWT Generator can be used implicitly, just by using the [Vonage Python SDK](https://github.com/Vonage/vonage-python-sdk) to make JWT-authenticated API calls.

It can also be used as a standalone JWT generator for use with Vonage APIs, like so:

### Import the `JwtClient` object

```python
from vonage_jwt.jwt import JwtClient
```

### Create a `JwtClient` object

```python
jwt_client = JwtClient(application_id, private_key)
```

### Generate a JWT using the provided application id and private key

```python
jwt_client.generate_application_jwt()
```

Optional JWT claims can be provided in a python dictionary:

```python
claims = {'jti': 'asdfzxcv1234', 'nbf': now + 100}
jwt_client.generate_application_jwt(claims)
```
