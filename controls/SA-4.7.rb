control 'SA-4 (7)' do
  impact 0.5
  title 'NIAP-approved Protection Profiles '
  desc <<~DESC
    (a) Limit the use of commercially provided information assurance and information assurance-enabled information technology products to those products that have been successfully evaluated against a National Information Assurance partnership (NIAP)-approved Protection Profile for a specific technology type, if such a profile exists; and
    (b) Require, if no NIAP-approved Protection Profile exists for a specific technology type but a commercially provided information technology product relies on cryptographic functionality to enforce its security policy, that the cryptographic module is FIPS-validated or NSA-approved.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SA-04(07)(a) the use of commercially provided information assurance and information assurance-enabled information technology products is limited to those products that have been successfully evaluated against a National Information Assurance partnership (NIAP)-approved Protection Profile for a specific technology type, if such a profile exists;
      SA-04(07)(b) if no NIAP-approved Protection Profile exists for a specific technology type but a commercially provided information technology product relies on cryptographic functionality to enforce its security policy, that cryptographic module is required to be FIPS-validated or NSA-approved.

    Assessment methods and objects:
      EXAMINE: Supply chain risk management plan; system and services acquisition policy; procedures addressing the integration of security requirements, descriptions, and criteria into the acquisition process; solicitation documents; acquisition documentation; acquisition contracts for the system, system component, or system service; list of deployed IT products/solutions; NAIP-approved protection profiles; FIPS-validation information for cryptographic functionality; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with acquisition/contracting responsibilities; organizational personnel with the responsibility for determining system security requirements; organizational personnel responsible for ensuring that information assurance products have been evaluated against a NIAP-approved protection profile or for ensuring products relying on cryptographic functionality are FIPS-validated; organizational personnel with information security responsibilities
      TEST: Organizational processes for selecting and employing products/services evaluated against a NIAP-approved protection profile or FIPS-validated products
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    See [NIAP CCEVS](#795aff72-3e6c-4b6b-a80a-b14d84b7f544) for additional information on NIAP. See [NIST CMVP](#1acdc775-aafb-4d11-9341-dc6a822e9d38) for additional information on FIPS-validated cryptographic modules.
  GUIDANCE
  tag nist: ['SA-4 (7)']
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}

  describe 'NIST SP 800-53 Rev 5 control SA-4 (7)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
