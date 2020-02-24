import 'package:flutter/material.dart';

const kROW_HEADING_TEXT = TextStyle(
  color: Colors.black,
  fontSize: 12,
  fontWeight: FontWeight.w600,
);
const kPRICE_TEXT_INACTIVE = TextStyle(
  color: Colors.redAccent,
  fontSize: 10,
  fontWeight: FontWeight.w500,
);

const kPRICE_TEXT_ACTIVE = TextStyle(
  color: Colors.red,
  fontSize: 10,
  fontWeight: FontWeight.w600,
);

const kSELECTION_ITEM_TEXT_INACTIVE = TextStyle(
  color: Colors.black54,
  fontSize: 12,
  fontWeight: FontWeight.w500,
);

const kSELECTION_ITEM_TEXT_ACTIVE = TextStyle(
  color: Colors.black,
  fontSize: 12,
  fontWeight: FontWeight.w500,
);

 final kSelectionItemBoxInactive = BoxDecoration(
  color: Colors.white,
  border:  Border.all(
    width: 1,
    color: Colors.grey
  )
);

final kSelectionItemBoxActive = BoxDecoration(
    color: Colors.red[100],
    border:  Border.all(
        width: 1,
        color: Colors.red
    )
);