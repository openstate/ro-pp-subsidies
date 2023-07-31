#!/usr/bin/env python
import os
import sys
import re
from urllib.parse import urljoin

import requests
from lxml import etree
import lxml

def main(argv):
    page_url = 'https://www.rijksoverheid.nl/onderwerpen/democratie/documenten/jaarverslagen/2023/01/27/overzicht-substantiele-giften-aan-politieke-partijen-2023'
    html = etree.HTML(requests.get(page_url).content)
    doc_link = [l.attrib['href'] for l in html.findall('.//a') if l.attrib['href'].endswith('.ods')]
    full_doc_link = urljoin(page_url, doc_link[0])
    print(full_doc_link)
    return 0

if __name__ == '__main__':
    sys.exit(main(sys.argv))
