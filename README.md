# Vonage JWT Generator for Python

[![PyPI version](https://badge.fury.io/py/vonage-jwt.svg)](https://badge.fury.io/py/vonage-jwt)
[![Build Status](https://github.com/Vonage/vonage-python-jwt/workflows/Build/badge.svg)](https://github.com/Vonage/vonage-python-jwt/actions)
[![Python versions supported](https://img.shields.io/pypi/pyversions/vonage-jwt)](https://pypi.python.org/pypi/vonage-jwt)
[![Code style: black](https://img.shields.io/badge/code%20style-black-000000.svg)](https://github.com/ambv/black)

This package provides functionality to generate a JWT in Python code.

It is used by the [Vonage Python SDK](https://github.com/Vonage/vonage-python-sdk).

- [Installation](#installation)
- [Generating JWTs](#generating-jwts)
- [Verifying a JWT signature](#verifying-a-jwt-signature)

## Installation

Install from the Python Package Index with pip:

```bash
pip install vonage-jwt
```

## Generating JWTs

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

## Verifying a JWT signature

You can use the `verify_jwt.verify_signature` method to verify a JWT signature is valid.

```python
from vonage_jwt.verify_jwt import verify_signature

verify_signature(TOKEN, SIGNATURE_SECRET) # Returns a boolean
```
