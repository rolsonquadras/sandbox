#
# Copyright SecureKey Technologies Inc. All Rights Reserved.
#
# SPDX-License-Identifier: Apache-2.0
#

#!/bin/sh -xe
#
# Copyright SecureKey Technologies Inc. All Rights Reserved.
#
# SPDX-License-Identifier: Apache-2.0
#

echo "Generating APIs and Models"
echo
# generate the user api and model
GENERATE_USERAPI_COMMAND="strapi generate:api users UserID:string Name:string Email:string Type:string"

$GENERATE_USERAPI_COMMAND

# generate the student cards api and model
GENERATE_STUDENTAPI_COMMAND="strapi generate:api studentcards UserID:string VcMetadata:json StudentID:string Name:string Email:string University:string Semester:string Type:string"

$GENERATE_STUDENTAPI_COMMAND

# generate the transcript api and model
GENERATE_TRANSCRIPT_COMMAND="strapi generate:api transcripts UserID:string VcMetadata:json StudentID:string Name:string University:string Course:string Status:string TotalCredits:string Type:string"

$GENERATE_TRANSCRIPT_COMMAND

# generate the travel card api and model
GENERATE_TRAVELCARD_COMMAND="strapi generate:api travelcards UserID:string VcMetadata:json TravelCardID:string Name:string Sex:string Country:string DOB:string IssueDate:string CardExpires:string Type:string"

$GENERATE_TRAVELCARD_COMMAND

# generate the permanent resident card api and model
GENERATE_PRCARD_COMMAND="strapi generate:api permanentresidentcards UserID:string VcMetadata:json VcCredentialSubject:json"

$GENERATE_PRCARD_COMMAND

# generate the vaccination certificate api and model
GENERATE_VCERT_CARD_COMMAND="strapi generate:api vaccinationcertificates UserID:string VcMetadata:json VcCredentialSubject:json"

$GENERATE_VCERT_CARD_COMMAND

# generate the certifiedmilltestreports and model
GENERATE_CMTR_COMMAND="strapi generate:api certifiedmilltestreports UserID:string VcMetadata:json Cmtr:json"

$GENERATE_CMTR_COMMAND

# generate the crudeproductcredentials and model
GENERATE_CMTR_COMMAND="strapi generate:api crudeproductcredentials UserID:string VcMetadata:json Producer:string Category:string HsCode:string Identifier:string Name:string Description:string Volume:string ProductionDate:string PredecessorOf:string SuccessorOf:string Address:json PhysicalSpecs:json ChemicalSpecs:json"

$GENERATE_CMTR_COMMAND

# generate the universitydegreecredentials and model
GENERATE_UDC_COMMAND="strapi generate:api universitydegreecredentials UserID:string VcMetadata:json Name:string Degree:json"

$GENERATE_UDC_COMMAND

# generate the creditcardstatements and model
GENERATE_CCS_COMMAND="strapi generate:api creditcardstatements UserID:string metadata:json data:json"

$GENERATE_CCS_COMMAND

# generate the drivinglicenses and model
GENERATE_DL_COMMAND="strapi generate:api mdls UserID:string metadata:json data:json"

$GENERATE_DL_COMMAND

# generate the drivinglicenses and model
GENERATE_CS_COMMAND="strapi generate:api creditscores UserID:string metadata:json data:json"

$GENERATE_CS_COMMAND

# generate the mdl evidences model
GENERATE_DLEVIDENCE_COMMAND="strapi generate:api mdlevidences UserID:string metadata:json data:json"

$GENERATE_DLEVIDENCE_COMMAND

# generate the boarding pass api and model
GENERATE_BOARDING_PASS_COMMAND="strapi generate:api boardingpasses UserID:string VcMetadata:json VcCredentialSubject:json"

$GENERATE_BOARDING_PASS_COMMAND

echo "Finished generating APIs and Models"
echo
