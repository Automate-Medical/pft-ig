# Pulmonary Function Testing: An Interoperability on FHIR Implementation Guide [DRAFT]

CI build of this IG available at http://pft-ig.automatemedical.com/.

## Development

You must have NodeJS and the JDK installed.

Preq:

```
npm install
sh ./_updatePublisher.sh
```

You can run a SUSHI build with:

```
npm run build
```

You can do an IG build after running the SUSHI build with:

```
sh ./_genonce.sh
```

## License

Copyright 2021 Automate Medical Inc.

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.