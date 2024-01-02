#!/usr/bin/env python
"""The setup script."""

import os

from setuptools import find_packages, setup

with open("README.md") as readme_file:
    readme = readme_file.read()

with open("CHANGELOG.md") as history_file:
    history = history_file.read()


package_root = os.path.abspath(os.path.dirname(__file__))
version = {}
with open(os.path.join(package_root, "panelapp_pydantic/_version.py")) as fp:
    exec(fp.read(), version)
version = version["__version__"]

setup(
    author="Manuel Holtgrewe",
    author_email="manuel.holtgrewe@bih-charite.de",
    python_requires=">=3.6",
    classifiers=[
        "Development Status :: 2 - Pre-Alpha",
        "Intended Audience :: Developers",
        "License :: OSI Approved :: MIT License",
        "Natural Language :: English",
        "Programming Language :: Python :: 3",
        "Programming Language :: Python :: 3.11",
    ],
    description="Pydantic models for Genomic PanelApp.",
    install_requires=[
        "pydantic",
    ],
    license="MIT license",
    long_description=readme + "\n\n" + history,
    long_description_content_type="text/markdown",
    include_package_data=True,
    keywords="clinvar",
    name="clinvar-this",
    packages=find_packages(
        include=[
            "panelapp_pydantic",
            "panelapp_pydantic.*",
        ]
    ),
    test_suite="tests",
    url="https://github.com/bihealth/clinvar-this",
    version=version,
    zip_safe=False,
)
