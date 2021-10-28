<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.33 (Build 246) (http://www.copasi.org) at 2021-07-21T18:38:15Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="33" versionDevel="246" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_13" name="Mass action (irreversible)" type="MassAction" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
   <rdf:Description rdf:about="#Function_13">
   <CopasiMT:is rdf:resource="urn:miriam:obo.sbo:SBO:0000163" />
   </rdf:Description>
   </rdf:RDF>
      </MiriamAnnotation>
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
<b>Mass action rate law for irreversible reactions</b>
<p>
Reaction scheme where the products are created from the reactants and the change of a product quantity is proportional to the product of reactant activities. The reaction scheme does not include any reverse process that creates the reactants from the products. The change of a product quantity is proportional to the quantity of one reactant.
</p>
</body>
      </Comment>
      <Expression>
        k1*PRODUCT&lt;substrate_i>
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_80" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_81" name="substrate" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_14" name="Mass action (reversible)" type="MassAction" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
   <rdf:Description rdf:about="#Function_14">
   <CopasiMT:is rdf:resource="urn:miriam:obo.sbo:SBO:0000042" />
   </rdf:Description>
   </rdf:RDF>
      </MiriamAnnotation>
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
<b>Mass action rate law for reversible reactions</b>
<p>
Reaction scheme where the products are created from the reactants and the change of a product quantity is proportional to the product of reactant activities. The reaction scheme does include a reverse process that creates the reactants from the products.
</p>
</body>
      </Comment>
      <Expression>
        k1*PRODUCT&lt;substrate_i>-k2*PRODUCT&lt;product_j>
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_69" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_68" name="substrate" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_78" name="k2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_79" name="product" order="3" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="apoptosis_mid" simulationType="time" timeUnit="s" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="mol" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Model_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2021-07-21T08:43:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="cell" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="TRAIL" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_0">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="--k1" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_1">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="TR" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_2">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="TRAIL_TR" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_2">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="TR_ACTIVE" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_4">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="TR_IN" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_5">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="TR_ACT" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_6">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="FLIP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_7">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="TR_ACT_FLIP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_7">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="C8" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_9">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="TR_ACT_C8" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_9">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="C8_ACT" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_11">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_12" name="BAR" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_12">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="C8_ACT_BAR" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_12">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_14" name="C3" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_14">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="C8_ACT_C3" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_14">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_16" name="C3_ACT" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_16">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_17" name="C3_ACT_C6" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_17">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_18" name="C6" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_17">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_19" name="C6_ACT" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_19">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_20" name="C6_ACT_C8" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_20">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_21" name="XIAP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_21">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_22" name="C3_XIAP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_22">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_23" name="C3_ACT_UB" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_23">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_24" name="C3_ACT_XIAP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_23">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_25" name="C3_ACT_PARP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_25">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_26" name="PARP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_25">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_27" name="cPARP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_27">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_28" name="BID" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_28">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_29" name="C8_BID" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_28">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_30" name="C8_ACT_BID" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_30">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_31" name="tBID" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_30">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_32" name="BCL2_C" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_32">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_33" name="BID_BCL2_C" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_32">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_34" name="BAX" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_34">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_35" name="tBID_BAX" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_34">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_36" name="BAX_ACT" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_36">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_37" name="BAX_ACT_MIT" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_37">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_38" name="BAX_ACT_MIT_BCL2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_38">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_39" name="BCL2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_38">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_40" name="BAX2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_40">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_41" name="BAX2_BCL2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_41">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_42" name="BAX4" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_42">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_43" name="BAX4_BCL2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_43">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_44" name="BAX4_M" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_44">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_45" name="M" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_44">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_46" name="M_ACT" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_46">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_47" name="M_ACT_SMAC_M" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_47">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_48" name="SMAC_M" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_47">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_49" name="SMAC_R" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_49">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_50" name="CYC" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_50">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_51" name="CYC_R" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_50">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_52" name="APAF" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_52">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_53" name="CYC_APAF" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_52">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_54" name="APAF_ACT" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_54">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_55" name="APOP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_55">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_56" name="C9" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_55">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_57" name="APOP_C3" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_57">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_58" name="SMAC" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_58">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_59" name="APOP_XIAP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_59">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_60" name="SMAC_XIAP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_60">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_61" name="CYC_M" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_61">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_62" name="M_ACT_CYC_M" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_61">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="No Name" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_0">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="reaction1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4986" name="k1" value="2.4e-05"/>
          <Constant key="Parameter_4988" name="k2" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_4986"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_0"/>
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_4988"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="reaction 2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4985" name="k1" value="1e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_4985"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="reaction 3" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4990" name="k1" value="1e-06"/>
          <Constant key="Parameter_4984" name="k2" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_4990"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_6"/>
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_4984"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="reaction 4" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4994" name="k1" value="1e-06"/>
          <Constant key="Parameter_4989" name="k2" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_4994"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_6"/>
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_4989"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="reaction 5" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4996" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_4996"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="reaction 6" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4993" name="k1" value="600000"/>
          <Constant key="Parameter_4997" name="k2" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_4993"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_11"/>
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_4997"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="reaction 7" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4991" name="k1" value="60000"/>
          <Constant key="Parameter_4992" name="k2" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_4991"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_11"/>
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_4992"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="reaction 8" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4995" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_4995"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="reaction 9" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5008" name="k1" value="600000"/>
          <Constant key="Parameter_4999" name="k2" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_5008"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_16"/>
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_4999"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="reaction 10" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5006" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5006"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="reaction 11" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5009" name="k1" value="18000"/>
          <Constant key="Parameter_4998" name="k2" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_5009"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_19"/>
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_4998"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="reaction 12" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5005" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5005"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="reaction 13" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7401" name="k1" value="1.2e+06"/>
          <Constant key="Parameter_7402" name="k2" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_7401"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_16"/>
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_7402"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="reaction 14" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5007" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5007"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="reaction 15" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7445" name="k1" value="600000"/>
          <Constant key="Parameter_5003" name="k2" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_7445"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_16"/>
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_5003"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="reaction 16" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
          <Product metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7438" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_7438"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="reaction 17" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7443" name="k1" value="60000"/>
          <Constant key="Parameter_7444" name="k2" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_7443"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_11"/>
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_7444"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="reaction 18" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
          <Product metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7442" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_7442"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="reaction 19" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_28" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7448" name="k1" value="600000"/>
          <Constant key="Parameter_7434" name="k2" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_7448"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_28"/>
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_7434"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="reaction 20" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_31" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_34" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7449" name="k1" value="60000"/>
          <Constant key="Parameter_7397" name="k2" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_7449"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_31"/>
              <SourceParameter reference="Metabolite_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_7397"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_22" name="reaction 21" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_31" stoichiometry="1"/>
          <Product metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7403" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_7403"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_23" name="reaction 22" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7292" name="k1" value="0.01"/>
          <Constant key="Parameter_7404" name="k2" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_7292"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_7404"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_24" name="reaction 23" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_37" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7398" name="k1" value="600000"/>
          <Constant key="Parameter_7439" name="k2" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_7398"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_37"/>
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_7439"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_25" name="reaction 24" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_37" stoichiometry="2"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7447" name="k1" value="600000"/>
          <Constant key="Parameter_7446" name="k2" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_7447"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_37"/>
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_7446"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_26" name="reaction 25" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_40" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7452" name="k1" value="600000"/>
          <Constant key="Parameter_7453" name="k2" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_7452"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_40"/>
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_7453"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_27" name="reaction 26" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_40" stoichiometry="2"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7450" name="k1" value="600000"/>
          <Constant key="Parameter_7451" name="k2" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_7450"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_40"/>
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_7451"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_42"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_28" name="reaction 27" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_42" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7456" name="k1" value="600000"/>
          <Constant key="Parameter_7457" name="k2" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_7456"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_42"/>
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_7457"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_29" name="reaction 28" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_42" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_44" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7454" name="k1" value="600000"/>
          <Constant key="Parameter_7455" name="k2" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_7454"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_42"/>
              <SourceParameter reference="Metabolite_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_7455"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_44"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_30" name="reaction 29" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_44" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_46" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7460" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_7460"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_44"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_31" name="reaction 32" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_46" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_48" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7375" name="k1" value="1.2e+06"/>
          <Constant key="Parameter_7461" name="k2" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_7375"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_46"/>
              <SourceParameter reference="Metabolite_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_7461"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_47"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_32" name="reaction 33" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_46" stoichiometry="1"/>
          <Product metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7376" name="k1" value="10"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_7376"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_47"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_33" name="reaction 34" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_50" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7424" name="k1" value="0.01"/>
          <Constant key="Parameter_7410" name="k2" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_7424"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_7410"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_50"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_34" name="reaction 35" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_50" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_52" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_53" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7419" name="k1" value="300000"/>
          <Constant key="Parameter_7423" name="k2" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_7419"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_50"/>
              <SourceParameter reference="Metabolite_52"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_7423"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_53"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_35" name="reaction 36" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_53" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_50" stoichiometry="1"/>
          <Product metabolite="Metabolite_54" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7411" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_7411"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_53"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_36" name="reaction 37" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_54" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_56" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_55" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7288" name="k1" value="30000"/>
          <Constant key="Parameter_7420" name="k2" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_7288"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_54"/>
              <SourceParameter reference="Metabolite_56"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_7420"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_55"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_37" name="reaction 38" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_55" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_57" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7421" name="k1" value="3000"/>
          <Constant key="Parameter_7371" name="k2" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_7421"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_55"/>
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_7371"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_57"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_38" name="reaction 39" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_57" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_55" stoichiometry="1"/>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7370" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_7370"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_57"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_39" name="reaction 40" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_58" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7372" name="k1" value="0.01"/>
          <Constant key="Parameter_7377" name="k2" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_7372"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_7377"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_58"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_40" name="reaction 41" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_55" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_59" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7367" name="k1" value="1.2e+06"/>
          <Constant key="Parameter_7407" name="k2" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_7367"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_55"/>
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_7407"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_59"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_41" name="reaction 42" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_58" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_60" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7432" name="k1" value="4.2e+06"/>
          <Constant key="Parameter_7425" name="k2" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_7432"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_58"/>
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_7425"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_60"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_42" name="reaction 30" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_46" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_61" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_62" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7431" name="k1" value="1.2e+06"/>
          <Constant key="Parameter_7391" name="k2" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_7431"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_46"/>
              <SourceParameter reference="Metabolite_61"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_7391"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_62"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="reaction 31" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_62" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_46" stoichiometry="1"/>
          <Product metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7385" name="k1" value="10"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_7385"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_62"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_1">
      <ModelParameterSet key="ModelParameterSet_1" name="Initial State">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_1">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=apoptosis_mid" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell]" value="9.9999999999999998e-13" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell],Vector=Metabolites[TRAIL]" value="602214085700" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell],Vector=Metabolites[--k1]" value="602214085700" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell],Vector=Metabolites[TR]" value="602214085700" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell],Vector=Metabolites[TRAIL_TR]" value="602214085700" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell],Vector=Metabolites[TR_ACTIVE]" value="602214085700" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell],Vector=Metabolites[TR_IN]" value="602214085700" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell],Vector=Metabolites[TR_ACT]" value="602214085700" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell],Vector=Metabolites[FLIP]" value="602214085700" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell],Vector=Metabolites[TR_ACT_FLIP]" value="602214085700" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell],Vector=Metabolites[C8]" value="602214085700" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell],Vector=Metabolites[TR_ACT_C8]" value="602214085700" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell],Vector=Metabolites[C8_ACT]" value="602214085700" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell],Vector=Metabolites[BAR]" value="602214085700" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell],Vector=Metabolites[C8_ACT_BAR]" value="602214085700" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell],Vector=Metabolites[C3]" value="602214085700" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell],Vector=Metabolites[C8_ACT_C3]" value="602214085700" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell],Vector=Metabolites[C3_ACT]" value="602214085700" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell],Vector=Metabolites[C3_ACT_C6]" value="602214085700" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell],Vector=Metabolites[C6]" value="602214085700" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell],Vector=Metabolites[C6_ACT]" value="602214085700" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell],Vector=Metabolites[C6_ACT_C8]" value="602214085700" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell],Vector=Metabolites[XIAP]" value="602214085700" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell],Vector=Metabolites[C3_XIAP]" value="602214085700" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell],Vector=Metabolites[C3_ACT_UB]" value="602214085700" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell],Vector=Metabolites[C3_ACT_XIAP]" value="602214085700" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell],Vector=Metabolites[C3_ACT_PARP]" value="602214085700" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell],Vector=Metabolites[PARP]" value="602214085700" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell],Vector=Metabolites[cPARP]" value="602214085700" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell],Vector=Metabolites[BID]" value="602214085700" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell],Vector=Metabolites[C8_BID]" value="602214085700" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell],Vector=Metabolites[C8_ACT_BID]" value="602214085700" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell],Vector=Metabolites[tBID]" value="602214085700" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell],Vector=Metabolites[BCL2_C]" value="602214085700" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell],Vector=Metabolites[BID_BCL2_C]" value="602214085700" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell],Vector=Metabolites[BAX]" value="602214085700" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell],Vector=Metabolites[tBID_BAX]" value="602214085700" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell],Vector=Metabolites[BAX_ACT]" value="602214085700" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell],Vector=Metabolites[BAX_ACT_MIT]" value="602214085700" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell],Vector=Metabolites[BAX_ACT_MIT_BCL2]" value="602214085700" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell],Vector=Metabolites[BCL2]" value="602214085700" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell],Vector=Metabolites[BAX2]" value="602214085700" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell],Vector=Metabolites[BAX2_BCL2]" value="602214085700" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell],Vector=Metabolites[BAX4]" value="602214085700" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell],Vector=Metabolites[BAX4_BCL2]" value="602214085700" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell],Vector=Metabolites[BAX4_M]" value="602214085700" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell],Vector=Metabolites[M]" value="602214085700" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell],Vector=Metabolites[M_ACT]" value="602214085700" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell],Vector=Metabolites[M_ACT_SMAC_M]" value="602214085700" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell],Vector=Metabolites[SMAC_M]" value="602214085700" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell],Vector=Metabolites[SMAC_R]" value="602214085700" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell],Vector=Metabolites[CYC]" value="602214085700" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell],Vector=Metabolites[CYC_R]" value="602214085700" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell],Vector=Metabolites[APAF]" value="602214085700" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell],Vector=Metabolites[CYC_APAF]" value="602214085700" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell],Vector=Metabolites[APAF_ACT]" value="602214085700" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell],Vector=Metabolites[APOP]" value="602214085700" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell],Vector=Metabolites[C9]" value="602214085700" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell],Vector=Metabolites[APOP_C3]" value="602214085700" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell],Vector=Metabolites[SMAC]" value="602214085700" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell],Vector=Metabolites[APOP_XIAP]" value="602214085700" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell],Vector=Metabolites[SMAC_XIAP]" value="602214085700" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell],Vector=Metabolites[CYC_M]" value="602214085700" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Compartments[cell],Vector=Metabolites[M_ACT_CYC_M]" value="602214085700" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Values[No Name]" value="4" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction1],ParameterGroup=Parameters,Parameter=k1" value="2.4000000000000001e-05" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction1],ParameterGroup=Parameters,Parameter=k2" value="0.001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 2],ParameterGroup=Parameters,Parameter=k1" value="1.0000000000000001e-05" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 3],ParameterGroup=Parameters,Parameter=k1" value="9.9999999999999995e-07" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 3],ParameterGroup=Parameters,Parameter=k2" value="0.001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 4],ParameterGroup=Parameters,Parameter=k1" value="9.9999999999999995e-07" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 4],ParameterGroup=Parameters,Parameter=k2" value="0.001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 5]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 5],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 6]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 6],ParameterGroup=Parameters,Parameter=k1" value="600000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 6],ParameterGroup=Parameters,Parameter=k2" value="0.001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 7]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 7],ParameterGroup=Parameters,Parameter=k1" value="60000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 7],ParameterGroup=Parameters,Parameter=k2" value="0.001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 8]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 8],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 9]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 9],ParameterGroup=Parameters,Parameter=k1" value="600000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 9],ParameterGroup=Parameters,Parameter=k2" value="0.001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 10]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 10],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 11]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 11],ParameterGroup=Parameters,Parameter=k1" value="18000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 11],ParameterGroup=Parameters,Parameter=k2" value="0.001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 12]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 12],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 13]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 13],ParameterGroup=Parameters,Parameter=k1" value="1200000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 13],ParameterGroup=Parameters,Parameter=k2" value="0.001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 14]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 14],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 15]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 15],ParameterGroup=Parameters,Parameter=k1" value="600000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 15],ParameterGroup=Parameters,Parameter=k2" value="0.01" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 16]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 16],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 17]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 17],ParameterGroup=Parameters,Parameter=k1" value="60000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 17],ParameterGroup=Parameters,Parameter=k2" value="0.001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 18]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 18],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 19]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 19],ParameterGroup=Parameters,Parameter=k1" value="600000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 19],ParameterGroup=Parameters,Parameter=k2" value="0.001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 20]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 20],ParameterGroup=Parameters,Parameter=k1" value="60000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 20],ParameterGroup=Parameters,Parameter=k2" value="0.001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 21]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 21],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 22]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 22],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 22],ParameterGroup=Parameters,Parameter=k2" value="0.01" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 23]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 23],ParameterGroup=Parameters,Parameter=k1" value="600000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 23],ParameterGroup=Parameters,Parameter=k2" value="0" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 24]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 24],ParameterGroup=Parameters,Parameter=k1" value="600000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 24],ParameterGroup=Parameters,Parameter=k2" value="0.001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 25]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 25],ParameterGroup=Parameters,Parameter=k1" value="600000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 25],ParameterGroup=Parameters,Parameter=k2" value="0.001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 26]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 26],ParameterGroup=Parameters,Parameter=k1" value="600000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 26],ParameterGroup=Parameters,Parameter=k2" value="0.001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 27]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 27],ParameterGroup=Parameters,Parameter=k1" value="600000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 27],ParameterGroup=Parameters,Parameter=k2" value="0.001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 28]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 28],ParameterGroup=Parameters,Parameter=k1" value="600000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 28],ParameterGroup=Parameters,Parameter=k2" value="0.001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 29]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 29],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 32]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 32],ParameterGroup=Parameters,Parameter=k1" value="1200000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 32],ParameterGroup=Parameters,Parameter=k2" value="0.001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 33]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 33],ParameterGroup=Parameters,Parameter=k1" value="10" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 34]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 34],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 34],ParameterGroup=Parameters,Parameter=k2" value="0.01" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 35]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 35],ParameterGroup=Parameters,Parameter=k1" value="300000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 35],ParameterGroup=Parameters,Parameter=k2" value="0.001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 36]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 36],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 37]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 37],ParameterGroup=Parameters,Parameter=k1" value="30000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 37],ParameterGroup=Parameters,Parameter=k2" value="0.001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 38]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 38],ParameterGroup=Parameters,Parameter=k1" value="3000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 38],ParameterGroup=Parameters,Parameter=k2" value="0.001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 39]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 39],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 40]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 40],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 40],ParameterGroup=Parameters,Parameter=k2" value="0.01" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 41]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 41],ParameterGroup=Parameters,Parameter=k1" value="1200000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 41],ParameterGroup=Parameters,Parameter=k2" value="0.001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 42]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 42],ParameterGroup=Parameters,Parameter=k1" value="4200000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 42],ParameterGroup=Parameters,Parameter=k2" value="0.001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 30]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 30],ParameterGroup=Parameters,Parameter=k1" value="1200000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 30],ParameterGroup=Parameters,Parameter=k2" value="0.001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 31]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=apoptosis_mid,Vector=Reactions[reaction 31],ParameterGroup=Parameters,Parameter=k1" value="10" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_16"/>
      <StateTemplateVariable objectReference="Metabolite_37"/>
      <StateTemplateVariable objectReference="Metabolite_40"/>
      <StateTemplateVariable objectReference="Metabolite_46"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_21"/>
      <StateTemplateVariable objectReference="Metabolite_55"/>
      <StateTemplateVariable objectReference="Metabolite_50"/>
      <StateTemplateVariable objectReference="Metabolite_31"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Metabolite_39"/>
      <StateTemplateVariable objectReference="Metabolite_28"/>
      <StateTemplateVariable objectReference="Metabolite_44"/>
      <StateTemplateVariable objectReference="Metabolite_49"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Metabolite_36"/>
      <StateTemplateVariable objectReference="Metabolite_51"/>
      <StateTemplateVariable objectReference="Metabolite_25"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_54"/>
      <StateTemplateVariable objectReference="Metabolite_58"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_62"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_42"/>
      <StateTemplateVariable objectReference="Metabolite_23"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_41"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_27"/>
      <StateTemplateVariable objectReference="Metabolite_34"/>
      <StateTemplateVariable objectReference="Metabolite_52"/>
      <StateTemplateVariable objectReference="Metabolite_29"/>
      <StateTemplateVariable objectReference="Metabolite_48"/>
      <StateTemplateVariable objectReference="Metabolite_20"/>
      <StateTemplateVariable objectReference="Metabolite_38"/>
      <StateTemplateVariable objectReference="Metabolite_61"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_35"/>
      <StateTemplateVariable objectReference="Metabolite_24"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_47"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_18"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_45"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_53"/>
      <StateTemplateVariable objectReference="Metabolite_33"/>
      <StateTemplateVariable objectReference="Metabolite_43"/>
      <StateTemplateVariable objectReference="Metabolite_56"/>
      <StateTemplateVariable objectReference="Metabolite_57"/>
      <StateTemplateVariable objectReference="Metabolite_26"/>
      <StateTemplateVariable objectReference="Metabolite_59"/>
      <StateTemplateVariable objectReference="Metabolite_60"/>
      <StateTemplateVariable objectReference="Metabolite_30"/>
      <StateTemplateVariable objectReference="Metabolite_32"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_22"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 602214085700 602214085700 602214085700 602214085700 602214085700 602214085700 602214085700 602214085700 602214085700 602214085700 602214085700 602214085700 602214085700 602214085700 602214085700 602214085700 602214085700 602214085700 602214085700 602214085700 602214085700 602214085700 602214085700 602214085700 602214085700 602214085700 602214085700 602214085700 602214085700 602214085700 602214085700 602214085700 602214085700 602214085700 602214085700 602214085700 602214085700 602214085700 602214085700 602214085700 602214085700 602214085700 602214085700 602214085700 602214085700 602214085700 602214085700 602214085700 602214085700 602214085700 602214085700 602214085700 602214085700 602214085700 602214085700 602214085700 602214085700 602214085700 602214085700 602214085700 602214085700 602214085700 602214085700 9.9999999999999998e-13 4 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_17" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_11" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="JacobianRequested" type="bool" value="1"/>
        <Parameter name="StabilityAnalysisRequested" type="bool" value="1"/>
      </Problem>
      <Method name="Enhanced Newton" type="EnhancedNewton">
        <Parameter name="Resolution" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Derivation Factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Use Newton" type="bool" value="1"/>
        <Parameter name="Use Integration" type="bool" value="1"/>
        <Parameter name="Use Back Integration" type="bool" value="0"/>
        <Parameter name="Accept Negative Concentrations" type="bool" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="50"/>
        <Parameter name="Maximum duration for forward integration" type="unsignedFloat" value="1000000000"/>
        <Parameter name="Maximum duration for backward integration" type="unsignedFloat" value="1000000"/>
        <Parameter name="Target Criterion" type="string" value="Distance and Rate"/>
      </Method>
    </Task>
    <Task key="Task_18" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Report reference="Report_12" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="100000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_19" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
        </ParameterGroup>
        <Parameter name="Output in subtask" type="bool" value="1"/>
        <Parameter name="Adjust initial conditions" type="bool" value="0"/>
        <Parameter name="Continue on Error" type="bool" value="0"/>
      </Problem>
      <Method name="Scan Framework" type="ScanFramework">
      </Method>
    </Task>
    <Task key="Task_20" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_13" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_21" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_14" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Subtask" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <ParameterText name="ObjectiveExpression" type="expression">
          
        </ParameterText>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
      </Problem>
      <Method name="Random Search" type="RandomSearch">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Number of Iterations" type="unsignedInteger" value="100000"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_22" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_15" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
        <Parameter name="Steady-State" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <Parameter name="Time-Course" type="cn" value="CN=Root,Vector=TaskList[Time-Course]"/>
        <Parameter name="Create Parameter Sets" type="bool" value="0"/>
        <Parameter name="Use Time Sens" type="bool" value="0"/>
        <Parameter name="Time-Sens" type="cn" value=""/>
        <ParameterGroup name="Experiment Set">
        </ParameterGroup>
        <ParameterGroup name="Validation Set">
          <Parameter name="Weight" type="unsignedFloat" value="1"/>
          <Parameter name="Threshold" type="unsignedInteger" value="5"/>
        </ParameterGroup>
      </Problem>
      <Method name="Evolutionary Programming" type="EvolutionaryProgram">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Number of Generations" type="unsignedInteger" value="200"/>
        <Parameter name="Population Size" type="unsignedInteger" value="20"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
        <Parameter name="Stop after # Stalled Generations" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_23" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_16" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_17"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_24" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_17" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="ExponentNumber" type="unsignedInteger" value="3"/>
        <Parameter name="DivergenceRequested" type="bool" value="1"/>
        <Parameter name="TransientTime" type="float" value="0"/>
      </Problem>
      <Method name="Wolf Method" type="WolfMethod">
        <Parameter name="Orthonormalization Interval" type="unsignedFloat" value="1"/>
        <Parameter name="Overall time" type="unsignedFloat" value="1000"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_25" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_18" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
      </Problem>
      <Method name="ILDM (LSODA,Deuflhard)" type="TimeScaleSeparation(ILDM,Deuflhard)">
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="0.0001"/>
      </Method>
    </Task>
    <Task key="Task_26" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_19" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="SubtaskType" type="unsignedInteger" value="1"/>
        <ParameterGroup name="TargetFunctions">
          <Parameter name="SingleObject" type="cn" value=""/>
          <Parameter name="ObjectListType" type="unsignedInteger" value="7"/>
        </ParameterGroup>
        <ParameterGroup name="ListOfVariables">
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="41"/>
          </ParameterGroup>
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="0"/>
          </ParameterGroup>
        </ParameterGroup>
      </Problem>
      <Method name="Sensitivities Method" type="SensitivitiesMethod">
        <Parameter name="Delta factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Delta minimum" type="unsignedFloat" value="9.9999999999999998e-13"/>
      </Method>
    </Task>
    <Task key="Task_27" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Report reference="Report_20" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_28" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
        <Parameter name="LimitCrossings" type="bool" value="0"/>
        <Parameter name="NumCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitOutTime" type="bool" value="0"/>
        <Parameter name="LimitOutCrossings" type="bool" value="0"/>
        <Parameter name="PositiveDirection" type="bool" value="1"/>
        <Parameter name="NumOutCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitUntilConvergence" type="bool" value="0"/>
        <Parameter name="ConvergenceTolerance" type="float" value="9.9999999999999995e-07"/>
        <Parameter name="Threshold" type="float" value="0"/>
        <Parameter name="DelayOutputUntilConvergence" type="bool" value="0"/>
        <Parameter name="OutputConvergenceTolerance" type="float" value="9.9999999999999995e-07"/>
        <ParameterText name="TriggerExpression" type="expression">
          
        </ParameterText>
        <Parameter name="SingleVariable" type="cn" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="100000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_29" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_21" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_17"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
    <Task key="Task_30" name="Time-Course Sensitivities" type="timeSensitivities" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
        <ParameterGroup name="ListOfParameters">
        </ParameterGroup>
        <ParameterGroup name="ListOfTargets">
        </ParameterGroup>
      </Problem>
      <Method name="LSODA Sensitivities" type="Sensitivities(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_11" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_12" name="Time-Course" taskType="timeCourse" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time-Course],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Time-Course],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_13" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_14" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_15" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_16" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_17" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_18" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_19" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_20" name="Moieties" taskType="moieties" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Moieties],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Moieties],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_21" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Result"/>
      </Footer>
    </Report>
  </ListOfReports>
  <GUI>
  </GUI>
  <ListOfUnitDefinitions>
    <UnitDefinition key="Unit_1" name="meter" symbol="m">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_0">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        m
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_5" name="second" symbol="s">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_4">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        s
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_13" name="Avogadro" symbol="Avogadro">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_12">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Avogadro
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_17" name="item" symbol="#">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_16">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        #
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_35" name="liter" symbol="l">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_34">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        0.001*m^3
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_41" name="mole" symbol="mol">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_40">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Avogadro*#
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
