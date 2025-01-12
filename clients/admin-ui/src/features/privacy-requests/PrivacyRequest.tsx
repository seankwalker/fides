import { Box, VStack } from "@fidesui/react";

import EventsAndLogs from "./events-and-logs/EventsAndLogs";
import ManualProcessingList from "./manual-processing/ManualProcessingList";
import RequestDetails from "./RequestDetails";
import SubjectIdentities from "./SubjectIdentities";
import { PrivacyRequestEntity } from "./types";

type PrivacyRequestProps = {
  data: PrivacyRequestEntity;
};

const PrivacyRequest: React.FC<PrivacyRequestProps> = ({
  data: subjectRequest,
}) => (
  <VStack align="stretch" display="flex-start" spacing={6}>
    <Box>
      <RequestDetails subjectRequest={subjectRequest} />
    </Box>
    <Box>
      <SubjectIdentities subjectRequest={subjectRequest} />
    </Box>
    {subjectRequest.status === "requires_input" && (
      <Box>
        <ManualProcessingList subjectRequest={subjectRequest} />
      </Box>
    )}
    <Box>
      <EventsAndLogs subjectRequest={subjectRequest} />
    </Box>
  </VStack>
);

export default PrivacyRequest;
