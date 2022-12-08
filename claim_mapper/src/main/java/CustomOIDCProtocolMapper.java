import org.keycloak.models.ClientSessionContext;
import org.keycloak.models.KeycloakSession;
import org.keycloak.models.ProtocolMapperModel;
import org.keycloak.models.UserSessionModel;
import org.keycloak.protocol.oidc.OIDCLoginProtocol;
import org.keycloak.protocol.oidc.mappers.*;
import org.keycloak.provider.ProviderConfigProperty;
import org.keycloak.representations.AccessToken;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
public class CustomOIDCProtocolMapper extends AbstractOIDCProtocolMapper implements OIDCAccessTokenMapper, OIDCIDTokenMapper, UserInfoTokenMapper {
public static final String PROVIDER_ID = "oidc-customprotocolmapper";
private static final List<ProviderConfigProperty> configProperties = new ArrayList<ProviderConfigProperty>();
/**
     * Maybe you want to have config fields for your Mapper
     */
    /*
    static {
        ProviderConfigProperty property;
        property = new ProviderConfigProperty();
        property.setName(ProtocolMapperUtils.USER_ATTRIBUTE);
        property.setLabel(ProtocolMapperUtils.USER_MODEL_ATTRIBUTE_LABEL);
        property.setHelpText(ProtocolMapperUtils.USER_MODEL_ATTRIBUTE_HELP_TEXT);
        property.setType(ProviderConfigProperty.STRING_TYPE);
        configProperties.add(property);
property = new ProviderConfigProperty();
        property.setName(ProtocolMapperUtils.MULTIVALUED);
        property.setLabel(ProtocolMapperUtils.MULTIVALUED_LABEL);
        property.setHelpText(ProtocolMapperUtils.MULTIVALUED_HELP_TEXT);
        property.setType(ProviderConfigProperty.BOOLEAN_TYPE);
        configProperties.add(property);
    }
     */
    @Override
    public List<ProviderConfigProperty> getConfigProperties() {
        return configProperties;
    }
@Override
    public String getDisplayCategory() {
        return TOKEN_MAPPER_CATEGORY;
    }
@Override
    public String getDisplayType() {
        return "Custom Claim Mapper";
    }
@Override
    public String getId() {
        return PROVIDER_ID;
    }
@Override
    public String getHelpText() {
        return "Example PLR Sourced custom claims";
    }
/*
 * This is where the custom claims would be retrieved from an external DB or API based on existing claims found in the access token
 * such as the unique pracitioner ID, such as the Pharmanet GPID, or other external college (regulatory body) ids for the practitioner.
 * This example shows hard-coded extra custom claims.
 * 
 * This assumes we would derive these additional claims in-flight during an authorization event. The only practical solution would be checking
 * member in good standing or status of the practitioner in the PLR so was to perform this check real-time.  Whether enforceable at 
 * the Resource Server 
 * 
 */
public AccessToken transformAccessToken(AccessToken token, ProtocolMapperModel mappingModel, KeycloakSession keycloakSession,
                                            UserSessionModel userSession, ClientSessionContext clientSessionCtx) {


token.getOtherClaims().put("plr_identifiers", "[ 'CAMD-9999-9999', 'MSP-99999' ]");
setClaim(token, mappingModel, userSession, keycloakSession, clientSessionCtx);
token.getOtherClaims().put("plr_provider_status", "active");
setClaim(token, mappingModel, userSession, keycloakSession, clientSessionCtx);
        return token;
    }
public static ProtocolMapperModel create(String name,
                                             boolean accessToken, boolean idToken, boolean userInfo) {
        ProtocolMapperModel mapper = new ProtocolMapperModel();
        mapper.setName(name);
        mapper.setProtocolMapper(PROVIDER_ID);
        mapper.setProtocol(OIDCLoginProtocol.LOGIN_PROTOCOL);
        Map<String, String> config = new HashMap<String, String>();
        config.put(OIDCAttributeMapperHelper.INCLUDE_IN_ACCESS_TOKEN, "true");
        config.put(OIDCAttributeMapperHelper.INCLUDE_IN_ID_TOKEN, "true");
        mapper.setConfig(config);
        return mapper;
    }
}