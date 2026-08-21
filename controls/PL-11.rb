control 'PL-11' do
  impact 0.5
  title 'Baseline Tailoring'
  desc <<~DESC
    Tailor the selected control baseline by applying specified tailoring actions.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      PL-11 the selected control baseline is tailored by applying specified tailoring actions.

    Assessment methods and objects:
      EXAMINE: Security and privacy planning policy; procedures addressing system security and privacy plan development and implementation; system design documentation; system categorization decision; information types stored, transmitted, and processed by the system; system element/component information; stakeholder needs analysis; list of security and privacy requirements allocated to the system, system elements, and environment of operation; list of contractual requirements allocated to external providers of the system or system element; business impact analysis or criticality analysis; risk assessments; risk management strategy; organizational security and privacy policy; federal or organization-approved or mandated baselines or overlays; baseline tailoring rationale; system security plan; privacy plan; records of system security and privacy plan reviews and updates; other relevant documents or records
      INTERVIEW: Organizational personnel with security and privacy planning and plan implementation responsibilities; organizational personnel with information security and privacy responsibilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The concept of tailoring allows organizations to specialize or customize a set of baseline controls by applying a defined set of tailoring actions. Tailoring actions facilitate such specialization and customization by allowing organizations to develop security and privacy plans that reflect their specific mission and business functions, the environments where their systems operate, the threats and vulnerabilities that can affect their systems, and any other conditions or situations that can impact their mission or business success. Tailoring guidance is provided in [SP 800-53B](#46d9e201-840e-440e-987c-2c773333c752) . Tailoring a control baseline is accomplished by identifying and designating common controls, applying scoping considerations, selecting compensating controls, assigning values to control parameters, supplementing the control baseline with additional controls as needed, and providing information for control implementation. The general tailoring actions in [SP 800-53B](#46d9e201-840e-440e-987c-2c773333c752) can be supplemented with additional actions based on the needs of organizations. Tailoring actions can be applied to the baselines in [SP 800-53B](#46d9e201-840e-440e-987c-2c773333c752) in accordance with the security and privacy requirements from [FISMA](#0c67b2a9-bede-43d2-b86d-5f35b8be36e9), [PRIVACT](#18e71fec-c6fd-475a-925a-5d8495cf8455) , and [OMB A-130](#27847491-5ce1-4f6a-a1e4-9e483782f0ef) . Alternatively, other communities of interest adopting different control baselines can apply the tailoring actions in [SP 800-53B](#46d9e201-840e-440e-987c-2c773333c752) to specialize or customize the controls that represent the specific needs and concerns of those entities.
  GUIDANCE
  tag nist: ['PL-11']
  tag rev: 'Rev_5'
  tag family: 'Planning'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true

  describe 'NIST SP 800-53 Rev 5 control PL-11' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
