control 'SA-9 (4)' do
  impact 0.5
  title 'Consistent Interests of Consumers and Providers'
  desc <<~DESC
    Take the following actions to verify that the interests of #{input('sa_09_04_odp_01')} are consistent with and reflect organizational interests: #{input('sa_09_04_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SA-09(04) #{input('sa_09_04_odp_02')} are taken to verify that the interests of #{input('sa_09_04_odp_01')} are consistent with and reflect organizational interests.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; procedures addressing external system services; acquisition contracts for the system, system component, or system service; solicitation documentation; acquisition documentation; service level agreements; organizational security requirements/safeguards for external service providers; personnel security policies for external service providers; assessments performed on external service providers; system security plan; supply chain risk management plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system and service acquisition responsibilities; organizational personnel with information security responsibilities; external providers of system services; organizational personnel with supply chain risk management responsibilities
      TEST: Organizational processes for defining and employing safeguards to ensure consistent interests with external service providers; mechanisms supporting and/or implementing safeguards to ensure consistent interests with external service providers
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    As organizations increasingly use external service providers, it is possible that the interests of the service providers may diverge from organizational interests. In such situations, simply having the required technical, management, or operational controls in place may not be sufficient if the providers that implement and manage those controls are not operating in a manner consistent with the interests of the consuming organizations. Actions that organizations take to address such concerns include requiring background checks for selected service provider personnel; examining ownership records; employing only trustworthy service providers, such as providers with which organizations have had successful trust relationships; and conducting routine, periodic, unscheduled visits to service provider facilities.
  GUIDANCE
  tag nist: ['SA-9 (4)']
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}
  tag odp: %w{sa_09_04_odp_01 sa_09_04_odp_02}

  describe 'NIST SP 800-53 Rev 5 control SA-9 (4)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
