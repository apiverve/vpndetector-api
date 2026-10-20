from setuptools import setup, find_packages

setup(
    name='apiverve_vpnproxydetector',
    version='1.2.2',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='VPN Proxy Detector checks any IP address to detect active VPN connections and cloud datacenter hosting. Lookups return boolean flags for VPN and datacenter status plus the verification date, with paid tiers adding Tor detection and risk levels.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/vpndetector?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
