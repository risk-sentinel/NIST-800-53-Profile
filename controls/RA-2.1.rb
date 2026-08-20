control 'RA-2 (1)' do
  impact 0.5
  title 'Impact-level Prioritization'
  desc <<~DESC
    Conduct an impact-level prioritization of organizational systems to obtain additional granularity on system impact levels.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      RA-02(01) an impact-level prioritization of organizational systems is conducted to obtain additional granularity on system impact levels.

    Assessment methods and objects:
      EXAMINE: Risk assessment policy; security and privacy planning policy and procedures; procedures addressing security categorization of organizational information and systems; security categorization documentation; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with security categorization and risk assessment responsibilities; organizational personnel with security and privacy responsibilities
      TEST: Organizational processes for security categorization
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations apply the "high-water mark" concept to each system categorized in accordance with [FIPS 199](#628d22a1-6a11-4784-bc59-5cd9497b5445) , resulting in systems designated as low impact, moderate impact, or high impact. Organizations that desire additional granularity in the system impact designations for risk-based decision-making, can further partition the systems into sub-categories of the initial system categorization. For example, an impact-level prioritization on a moderate-impact system can produce three new sub-categories: low-moderate systems, moderate-moderate systems, and high-moderate systems. Impact-level prioritization and the resulting sub-categories of the system give organizations an opportunity to focus their investments related to security control selection and the tailoring of control baselines in responding to identified risks. Impact-level prioritization can also be used to determine those systems that may be of heightened interest or value to adversaries or represent a critical loss to the federal enterprise, sometimes described as high value assets. For such high value assets, organizations may be more focused on complexity, aggregation, and information exchanges. Systems with high value assets can be prioritized by partitioning high-impact systems into low-high systems, moderate-high systems, and high-high systems. Alternatively, organizations can apply the guidance in [CNSSI 1253](#4e4fbc93-333d-45e6-a875-de36b878b6b9) for security objective-related categorization.
  GUIDANCE
  tag nist: ['RA-2 (1)']
  tag rev: 'Rev_5'
  tag family: 'Risk Assessment'
  tag baseline: %w{}

  describe 'NIST SP 800-53 Rev 5 control RA-2 (1)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
