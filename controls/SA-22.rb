control 'SA-22' do
  impact 0.5
  title 'Unsupported System Components'
  desc <<~DESC
    a. Replace system components when support for the components is no longer available from the developer, vendor, or manufacturer; or
    b. Provide the following options for alternative sources for continued support for unsupported components #{input('sa_22_odp_01')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SA-22a. system components are replaced when support for the components is no longer available from the developer, vendor, or manufacturer;
      SA-22b. #{input('sa_22_odp_01')} provide options for alternative sources for continued support for unsupported components.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; procedures addressing the replacement or continued use of unsupported system components; documented evidence of replacing unsupported system components; documented approvals (including justification) for the continued use of unsupported system components; system security plan; supply chain risk management plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system and service acquisition responsibilities; organizational personnel with information security responsibilities; organizational personnel with the responsibility for the system development life cycle; organizational personnel responsible for component replacement
      TEST: Organizational processes for replacing unsupported system components; mechanisms supporting and/or implementing the replacement of unsupported system components
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Support for system components includes software patches, firmware updates, replacement parts, and maintenance contracts. An example of unsupported components includes when vendors no longer provide critical software patches or product updates, which can result in an opportunity for adversaries to exploit weaknesses in the installed components. Exceptions to replacing unsupported system components include systems that provide critical mission or business capabilities where newer technologies are not available or where the systems are so isolated that installing replacement components is not an option.

    Alternative sources for support address the need to provide continued support for system components that are no longer supported by the original manufacturers, developers, or vendors when such components remain essential to organizational mission and business functions. If necessary, organizations can establish in-house support by developing customized patches for critical software components or, alternatively, obtain the services of external providers who provide ongoing support for the designated unsupported components through contractual relationships. Such contractual relationships can include open-source software value-added vendors. The increased risk of using unsupported system components can be mitigated, for example, by prohibiting the connection of such components to public or uncontrolled networks, or implementing other forms of isolation.
  GUIDANCE
  tag nist: ['SA-22']
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag odp: %w{sa_22_odp_01}

  describe 'NIST SP 800-53 Rev 5 control SA-22' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
