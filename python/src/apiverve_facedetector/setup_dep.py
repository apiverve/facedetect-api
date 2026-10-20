from setuptools import setup, find_packages

setup(
    name='apiverve_facedetector',
    version='1.2.2',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Face Detector is a face detection API that analyzes an image and reports whether it contains human faces. Paid plans add the face count and bounding box coordinates with a confidence score for each detected face.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/facedetect?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
