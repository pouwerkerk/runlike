from setuptools import setup, find_packages

setup(
    name='runlike',
    version='1.0.0',
    packages=find_packages(),
    entry_points={
        'console_scripts': [
            'runlike=runlike.runlike:main',
        ],
    },
)
