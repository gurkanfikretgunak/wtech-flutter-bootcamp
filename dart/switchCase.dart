void main(List<String> args) {
  var command = 'OPEN';
  switch (command) {
    case 'CLOSED':
      executeClosed();
      break;
    case 'PENDING':
      executePending();
      break;
    case 'APPROVED':
      executeApproved();
      break;
    case 'DENIED':
      executeDenied();
      break;
    case 'OPEN':
      executeOpen();
      break;
    default:
      executeUnknown();
  }
}

void executeUnknown() {
  print("unknown");
}

void executeOpen() {
  print("open");
}

void executeDenied() {
  print("denied");
}

void executeApproved() {
  print("approved");
}

void executePending() {
  print("pending");
}

void executeClosed() {
  print("closed");
}
