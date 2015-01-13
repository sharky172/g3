.class public final Lcom/lge/media/TimedTextEx;
.super Ljava/lang/Object;
.source "TimedTextEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/media/TimedTextEx$FormFeed;,
        Lcom/lge/media/TimedTextEx$HorizontalCarriageReturn;,
        Lcom/lge/media/TimedTextEx$Reset;,
        Lcom/lge/media/TimedTextEx$DelayCancel;,
        Lcom/lge/media/TimedTextEx$Delay;,
        Lcom/lge/media/TimedTextEx$SetPenLocation;,
        Lcom/lge/media/TimedTextEx$SetPenColor;,
        Lcom/lge/media/TimedTextEx$SetPenAttribute;,
        Lcom/lge/media/TimedTextEx$SetWindowAttribute;,
        Lcom/lge/media/TimedTextEx$ToggleWindows;,
        Lcom/lge/media/TimedTextEx$HideWindows;,
        Lcom/lge/media/TimedTextEx$DisplayWindows;,
        Lcom/lge/media/TimedTextEx$DeleteWindows;,
        Lcom/lge/media/TimedTextEx$DefineWindow;,
        Lcom/lge/media/TimedTextEx$ClearWindows;,
        Lcom/lge/media/TimedTextEx$SetCurrentWindow;,
        Lcom/lge/media/TimedTextEx$TextAttribute;,
        Lcom/lge/media/TimedTextEx$PreambleAdressCode;,
        Lcom/lge/media/TimedTextEx$ResumeTextDisplay;,
        Lcom/lge/media/TimedTextEx$Backspace;,
        Lcom/lge/media/TimedTextEx$EraseNondisplayMemory;,
        Lcom/lge/media/TimedTextEx$CarriageReturn;,
        Lcom/lge/media/TimedTextEx$Rollup4;,
        Lcom/lge/media/TimedTextEx$Rollup3;,
        Lcom/lge/media/TimedTextEx$Rollup2;,
        Lcom/lge/media/TimedTextEx$TapOffset3;,
        Lcom/lge/media/TimedTextEx$TapOffset2;,
        Lcom/lge/media/TimedTextEx$TapOffset1;,
        Lcom/lge/media/TimedTextEx$EndOfCaption;,
        Lcom/lge/media/TimedTextEx$ResumeCaptionLoading;,
        Lcom/lge/media/TimedTextEx$EraseDisplayMemory;,
        Lcom/lge/media/TimedTextEx$HyperText;,
        Lcom/lge/media/TimedTextEx$Karaoke;,
        Lcom/lge/media/TimedTextEx$Font;,
        Lcom/lge/media/TimedTextEx$Style;,
        Lcom/lge/media/TimedTextEx$Justification;,
        Lcom/lge/media/TimedTextEx$CharPos;
    }
.end annotation


# static fields
.field private static final FIRST_PRIVATE_KEY:I = 0x12d

.field private static final FIRST_PUBLIC_KEY:I = 0x1

.field public static final KEY_EX_BACKGROUND_COLOR_RGBA:I = 0x9

.field public static final KEY_EX_COMMAND:I = 0x6

.field public static final KEY_EX_COMMAND_BACKSPACE:I = 0x70

.field public static final KEY_EX_COMMAND_CARRIAGE_RETURN:I = 0x6e

.field public static final KEY_EX_COMMAND_CLEAR_WINDOWS:I = 0xca

.field public static final KEY_EX_COMMAND_DEFINE_WINDOW:I = 0xcb

.field public static final KEY_EX_COMMAND_DELAY:I = 0xdd

.field public static final KEY_EX_COMMAND_DELAY_CANCEL:I = 0xde

.field public static final KEY_EX_COMMAND_DELETE_WINDOWS:I = 0xcc

.field public static final KEY_EX_COMMAND_DISPLAY_WINDOWS:I = 0xcd

.field public static final KEY_EX_COMMAND_END_OF_CAPTION:I = 0x67

.field public static final KEY_EX_COMMAND_ERASE_DISPLAYED_MEMORY:I = 0x65

.field public static final KEY_EX_COMMAND_ERASE_NONDISPLAYED_MEMORY:I = 0x6f

.field public static final KEY_EX_COMMAND_FORM_FEED:I = 0xe8

.field public static final KEY_EX_COMMAND_HIDE_WINDOWS:I = 0xce

.field public static final KEY_EX_COMMAND_HORIZONTAL_CARRIAGE_RETURN:I = 0xe7

.field public static final KEY_EX_COMMAND_PAC:I = 0x72

.field private static final KEY_EX_COMMAND_PARA_ANCHOR_HORIZONTAL:I = 0x133

.field private static final KEY_EX_COMMAND_PARA_ANCHOR_POINT:I = 0x130

.field private static final KEY_EX_COMMAND_PARA_ANCHOR_VERTICAL:I = 0x132

.field private static final KEY_EX_COMMAND_PARA_BG_COLOR:I = 0x154

.field private static final KEY_EX_COMMAND_PARA_BG_OPACITY:I = 0x155

.field private static final KEY_EX_COMMAND_PARA_BORDER_COLOR:I = 0x145

.field private static final KEY_EX_COMMAND_PARA_BORDER_TYPE:I = 0x144

.field private static final KEY_EX_COMMAND_PARA_COLOR_608:I = 0x16a

.field private static final KEY_EX_COMMAND_PARA_COLUMN:I = 0x158

.field private static final KEY_EX_COMMAND_PARA_COLUMN_COUNT:I = 0x135

.field private static final KEY_EX_COMMAND_PARA_COLUMN_LOCK:I = 0x137

.field private static final KEY_EX_COMMAND_PARA_DISPLAY_EFFECT:I = 0x13f

.field private static final KEY_EX_COMMAND_PARA_EDGE_COLOR:I = 0x156

.field private static final KEY_EX_COMMAND_PARA_EDGE_TYPE:I = 0x151

.field private static final KEY_EX_COMMAND_PARA_EFFECT_DIRECTION:I = 0x140

.field private static final KEY_EX_COMMAND_PARA_EFFECT_SPEED:I = 0x141

.field private static final KEY_EX_COMMAND_PARA_FG_COLOR:I = 0x152

.field private static final KEY_EX_COMMAND_PARA_FG_OPACITY:I = 0x153

.field private static final KEY_EX_COMMAND_PARA_FILL_COLOR:I = 0x142

.field private static final KEY_EX_COMMAND_PARA_FILL_OPACITY:I = 0x143

.field private static final KEY_EX_COMMAND_PARA_FONT:I = 0x14c

.field private static final KEY_EX_COMMAND_PARA_FONT_608:I = 0x16b

.field private static final KEY_EX_COMMAND_PARA_INDENT_608:I = 0x16c

.field private static final KEY_EX_COMMAND_PARA_ITALICS:I = 0x14f

.field private static final KEY_EX_COMMAND_PARA_JUSTIFY:I = 0x13b

.field private static final KEY_EX_COMMAND_PARA_OFFSET:I = 0x14e

.field private static final KEY_EX_COMMAND_PARA_PEN_SIZE:I = 0x14b

.field private static final KEY_EX_COMMAND_PARA_PEN_STYLE_ID:I = 0x13a

.field private static final KEY_EX_COMMAND_PARA_PRINT_DIRECTION:I = 0x13c

.field private static final KEY_EX_COMMAND_PARA_PRIORITY:I = 0x12f

.field private static final KEY_EX_COMMAND_PARA_RELATIVE_POSITION:I = 0x131

.field private static final KEY_EX_COMMAND_PARA_ROW:I = 0x157

.field private static final KEY_EX_COMMAND_PARA_ROW_608:I = 0x169

.field private static final KEY_EX_COMMAND_PARA_ROW_COUNT:I = 0x134

.field private static final KEY_EX_COMMAND_PARA_ROW_LOCK:I = 0x136

.field private static final KEY_EX_COMMAND_PARA_SCROLL_DIRECTION:I = 0x13d

.field private static final KEY_EX_COMMAND_PARA_TENTHS_SECONDS:I = 0x15f

.field private static final KEY_EX_COMMAND_PARA_TEXT_TAG:I = 0x14d

.field private static final KEY_EX_COMMAND_PARA_UNDERLINE:I = 0x150

.field private static final KEY_EX_COMMAND_PARA_VISIBLE:I = 0x138

.field private static final KEY_EX_COMMAND_PARA_WINDOW_ID:I = 0x12d

.field private static final KEY_EX_COMMAND_PARA_WINDOW_MAP:I = 0x12e

.field private static final KEY_EX_COMMAND_PARA_WINDOW_STYLE_ID:I = 0x139

.field private static final KEY_EX_COMMAND_PARA_WORDRAP:I = 0x13e

.field public static final KEY_EX_COMMAND_RESET:I = 0xdf

.field public static final KEY_EX_COMMAND_RESUME_CAPTION_LOADING:I = 0x66

.field public static final KEY_EX_COMMAND_RESUME_TEXT_DISPLAY:I = 0x71

.field public static final KEY_EX_COMMAND_ROLLUP2:I = 0x6b

.field public static final KEY_EX_COMMAND_ROLLUP3:I = 0x6c

.field public static final KEY_EX_COMMAND_ROLLUP4:I = 0x6d

.field public static final KEY_EX_COMMAND_SET_CURRENT_WINDOW:I = 0xc9

.field public static final KEY_EX_COMMAND_SET_PEN_ATTRIBUTE:I = 0xd3

.field public static final KEY_EX_COMMAND_SET_PEN_COLOR:I = 0xd4

.field public static final KEY_EX_COMMAND_SET_PEN_LOCATION:I = 0xd5

.field public static final KEY_EX_COMMAND_SET_WINDOW_ATTRIBUTE:I = 0xd0

.field public static final KEY_EX_COMMAND_TAB_OFFSET1:I = 0x68

.field public static final KEY_EX_COMMAND_TAB_OFFSET2:I = 0x69

.field public static final KEY_EX_COMMAND_TAB_OFFSET3:I = 0x6a

.field public static final KEY_EX_COMMAND_TEXT_ATTR:I = 0x73

.field public static final KEY_EX_COMMAND_TOGGLE_WINDOWS:I = 0xcf

.field public static final KEY_EX_DATA:I = 0x1a

.field public static final KEY_EX_DISPLAY_FLAGS:I = 0x7

.field public static final KEY_EX_DURATION:I = 0x17

.field private static final KEY_EX_END_CHAR:I = 0x194

.field private static final KEY_EX_FONT_ID:I = 0x195

.field private static final KEY_EX_FONT_SIZE:I = 0x196

.field private static final KEY_EX_GLOBAL_SETTING:I = 0x191

.field public static final KEY_EX_HEIGHT:I = 0x15

.field public static final KEY_EX_HIGHLIGHT_COLOR_RGBA:I = 0xa

.field public static final KEY_EX_LANGUAGE:I = 0x4

.field public static final KEY_EX_LANGUAGE_COUNT:I = 0x3

.field private static final KEY_EX_LOCAL_SETTING:I = 0x192

.field public static final KEY_EX_MAX_SERVICE_NUM:I = 0x1c

.field public static final KEY_EX_MEDIA_MIMETYPE:I = 0x1

.field public static final KEY_EX_SCROLL_DELAY:I = 0xb

.field public static final KEY_EX_SERVICE_NUM:I = 0x1b

.field private static final KEY_EX_START_CHAR:I = 0x193

.field public static final KEY_EX_START_OFFSET:I = 0x18

.field public static final KEY_EX_START_TIME_MS:I = 0x2

.field public static final KEY_EX_STRUCT_BLINKING_TEXT_LIST:I = 0xd

.field public static final KEY_EX_STRUCT_FONT_LIST:I = 0xe

.field public static final KEY_EX_STRUCT_HIGHLIGHT_LIST:I = 0xf

.field public static final KEY_EX_STRUCT_HYPER_TEXT_LIST:I = 0x10

.field public static final KEY_EX_STRUCT_JUSTIFICATION:I = 0x14

.field public static final KEY_EX_STRUCT_KARAOKE_LIST:I = 0x11

.field public static final KEY_EX_STRUCT_STYLE_LIST:I = 0x12

.field public static final KEY_EX_STRUCT_TEXT_POS:I = 0x13

.field public static final KEY_EX_STYLE_FLAGS:I = 0x8

.field public static final KEY_EX_SUB_ATOM:I = 0x19

.field public static final KEY_EX_TEXT:I = 0x5

.field private static final KEY_EX_TEXT_COLOR_RGBA:I = 0x197

.field public static final KEY_EX_WIDTH:I = 0x16

.field public static final KEY_EX_WRAP_TEXT:I = 0xc

.field private static final LAST_PRIVATE_KEY:I = 0x197

.field private static final LAST_PUBLIC_KEY:I = 0xe8

.field private static final SERVICE_COUNT:I = 0x44

.field private static final SERVICE_COUNT_CEA608:I = 0x4

.field private static final SERVICE_COUNT_CEA708:I = 0x40

.field private static final TAG:Ljava/lang/String; = "TimedTextEx"


# instance fields
.field private USE_CHAR:I

.field private mBackgroundColorRGBA:I

.field private mBackspace:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/media/TimedTextEx$Backspace;",
            ">;"
        }
    .end annotation
.end field

.field private mBlinkingPosList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/media/TimedTextEx$CharPos;",
            ">;"
        }
    .end annotation
.end field

.field private mCR:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/media/TimedTextEx$CarriageReturn;",
            ">;"
        }
    .end annotation
.end field

.field private mClearWins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/media/TimedTextEx$ClearWindows;",
            ">;"
        }
    .end annotation
.end field

.field private mData:[B

.field private mDefineWin:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/media/TimedTextEx$DefineWindow;",
            ">;"
        }
    .end annotation
.end field

.field private mDelWins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/media/TimedTextEx$DeleteWindows;",
            ">;"
        }
    .end annotation
.end field

.field private mDelay:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/media/TimedTextEx$Delay;",
            ">;"
        }
    .end annotation
.end field

.field private mDelayCancel:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/media/TimedTextEx$DelayCancel;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayFlags:I

.field private mDisplayWins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/media/TimedTextEx$DisplayWindows;",
            ">;"
        }
    .end annotation
.end field

.field private mDuration:I

.field private mEndofCaption:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/media/TimedTextEx$EndOfCaption;",
            ">;"
        }
    .end annotation
.end field

.field private mEraseDisMem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/media/TimedTextEx$EraseDisplayMemory;",
            ">;"
        }
    .end annotation
.end field

.field private mEraseNonDisMem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/media/TimedTextEx$EraseNondisplayMemory;",
            ">;"
        }
    .end annotation
.end field

.field private mFontList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/media/TimedTextEx$Font;",
            ">;"
        }
    .end annotation
.end field

.field private mFormFeed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/media/TimedTextEx$FormFeed;",
            ">;"
        }
    .end annotation
.end field

.field private mHeight:I

.field private mHideWins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/media/TimedTextEx$HideWindows;",
            ">;"
        }
    .end annotation
.end field

.field private mHighlightColorRGBA:I

.field private mHighlightPosList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/media/TimedTextEx$CharPos;",
            ">;"
        }
    .end annotation
.end field

.field private mHorizontalCarriageReturn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/media/TimedTextEx$HorizontalCarriageReturn;",
            ">;"
        }
    .end annotation
.end field

.field private mHyperTextList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/media/TimedTextEx$HyperText;",
            ">;"
        }
    .end annotation
.end field

.field private mIndex:I

.field private mJustification:Lcom/lge/media/TimedTextEx$Justification;

.field private mKaraokeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/media/TimedTextEx$Karaoke;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeyObjectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mLanguageCount:I

.field private final mLanguageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMimeTypeChars:Ljava/lang/String;

.field private mPreambleAdressCode:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/media/TimedTextEx$PreambleAdressCode;",
            ">;"
        }
    .end annotation
.end field

.field private mReset:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/media/TimedTextEx$Reset;",
            ">;"
        }
    .end annotation
.end field

.field private mResumeCaption:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/media/TimedTextEx$ResumeCaptionLoading;",
            ">;"
        }
    .end annotation
.end field

.field private mResumeTextDis:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/media/TimedTextEx$ResumeTextDisplay;",
            ">;"
        }
    .end annotation
.end field

.field private mRollup2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/media/TimedTextEx$Rollup2;",
            ">;"
        }
    .end annotation
.end field

.field private mRollup3:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/media/TimedTextEx$Rollup3;",
            ">;"
        }
    .end annotation
.end field

.field private mRollup4:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/media/TimedTextEx$Rollup4;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollDelay:I

.field private final mServiceNumberList:[I

.field private mServiceNumberMax:I

.field private mSetCurWin:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/media/TimedTextEx$SetCurrentWindow;",
            ">;"
        }
    .end annotation
.end field

.field private mSetPenAttribute:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/media/TimedTextEx$SetPenAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private mSetPenColor:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/media/TimedTextEx$SetPenColor;",
            ">;"
        }
    .end annotation
.end field

.field private mSetPenLocation:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/media/TimedTextEx$SetPenLocation;",
            ">;"
        }
    .end annotation
.end field

.field private mSetWinAttribute:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/media/TimedTextEx$SetWindowAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private mStartOffset:I

.field private mStartTimeMs:I

.field private mStyleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/media/TimedTextEx$Style;",
            ">;"
        }
    .end annotation
.end field

.field private mSubAtom:I

.field private mTapOffset1:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/media/TimedTextEx$TapOffset1;",
            ">;"
        }
    .end annotation
.end field

.field private mTapOffset2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/media/TimedTextEx$TapOffset2;",
            ">;"
        }
    .end annotation
.end field

.field private mTapOffset3:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/media/TimedTextEx$TapOffset3;",
            ">;"
        }
    .end annotation
.end field

.field private mTextAttribute:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/media/TimedTextEx$TextAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextChars:Ljava/lang/String;

.field private final mTextList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mToggleWins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/media/TimedTextEx$ToggleWindows;",
            ">;"
        }
    .end annotation
.end field

.field private mWidth:I

.field private mWrapText:I


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter "parcel"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 1408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/media/TimedTextEx;->mLanguageList:Ljava/util/ArrayList;

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/media/TimedTextEx;->mTextList:Ljava/util/ArrayList;

    .line 184
    iput v2, p0, Lcom/lge/media/TimedTextEx;->mServiceNumberMax:I

    .line 188
    const/16 v0, 0x44

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lge/media/TimedTextEx;->mServiceNumberList:[I

    .line 190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/media/TimedTextEx;->mKeyObjectMap:Ljava/util/HashMap;

    .line 193
    iput v2, p0, Lcom/lge/media/TimedTextEx;->mDisplayFlags:I

    .line 194
    iput v2, p0, Lcom/lge/media/TimedTextEx;->mBackgroundColorRGBA:I

    .line 195
    iput v2, p0, Lcom/lge/media/TimedTextEx;->mHighlightColorRGBA:I

    .line 196
    iput v2, p0, Lcom/lge/media/TimedTextEx;->mScrollDelay:I

    .line 197
    iput v2, p0, Lcom/lge/media/TimedTextEx;->mWrapText:I

    .line 199
    iput-object v1, p0, Lcom/lge/media/TimedTextEx;->mBlinkingPosList:Ljava/util/List;

    .line 200
    iput-object v1, p0, Lcom/lge/media/TimedTextEx;->mHighlightPosList:Ljava/util/List;

    .line 201
    iput-object v1, p0, Lcom/lge/media/TimedTextEx;->mKaraokeList:Ljava/util/List;

    .line 202
    iput-object v1, p0, Lcom/lge/media/TimedTextEx;->mFontList:Ljava/util/List;

    .line 203
    iput-object v1, p0, Lcom/lge/media/TimedTextEx;->mStyleList:Ljava/util/List;

    .line 204
    iput-object v1, p0, Lcom/lge/media/TimedTextEx;->mHyperTextList:Ljava/util/List;

    .line 206
    iput-object v1, p0, Lcom/lge/media/TimedTextEx;->mTextBounds:Landroid/graphics/Rect;

    .line 207
    iput-object v1, p0, Lcom/lge/media/TimedTextEx;->mTextChars:Ljava/lang/String;

    .line 211
    iput v2, p0, Lcom/lge/media/TimedTextEx;->mHeight:I

    .line 212
    iput v2, p0, Lcom/lge/media/TimedTextEx;->mWidth:I

    .line 213
    iput v2, p0, Lcom/lge/media/TimedTextEx;->mDuration:I

    .line 214
    iput v2, p0, Lcom/lge/media/TimedTextEx;->mStartOffset:I

    .line 215
    iput v2, p0, Lcom/lge/media/TimedTextEx;->mSubAtom:I

    .line 219
    iput-object v1, p0, Lcom/lge/media/TimedTextEx;->mEraseDisMem:Ljava/util/ArrayList;

    .line 220
    iput-object v1, p0, Lcom/lge/media/TimedTextEx;->mResumeCaption:Ljava/util/ArrayList;

    .line 221
    iput-object v1, p0, Lcom/lge/media/TimedTextEx;->mEndofCaption:Ljava/util/ArrayList;

    .line 222
    iput-object v1, p0, Lcom/lge/media/TimedTextEx;->mTapOffset1:Ljava/util/ArrayList;

    .line 223
    iput-object v1, p0, Lcom/lge/media/TimedTextEx;->mTapOffset2:Ljava/util/ArrayList;

    .line 224
    iput-object v1, p0, Lcom/lge/media/TimedTextEx;->mTapOffset3:Ljava/util/ArrayList;

    .line 225
    iput-object v1, p0, Lcom/lge/media/TimedTextEx;->mRollup2:Ljava/util/ArrayList;

    .line 226
    iput-object v1, p0, Lcom/lge/media/TimedTextEx;->mRollup3:Ljava/util/ArrayList;

    .line 227
    iput-object v1, p0, Lcom/lge/media/TimedTextEx;->mRollup4:Ljava/util/ArrayList;

    .line 228
    iput-object v1, p0, Lcom/lge/media/TimedTextEx;->mCR:Ljava/util/ArrayList;

    .line 229
    iput-object v1, p0, Lcom/lge/media/TimedTextEx;->mEraseNonDisMem:Ljava/util/ArrayList;

    .line 230
    iput-object v1, p0, Lcom/lge/media/TimedTextEx;->mBackspace:Ljava/util/ArrayList;

    .line 231
    iput-object v1, p0, Lcom/lge/media/TimedTextEx;->mResumeTextDis:Ljava/util/ArrayList;

    .line 232
    iput-object v1, p0, Lcom/lge/media/TimedTextEx;->mPreambleAdressCode:Ljava/util/ArrayList;

    .line 233
    iput-object v1, p0, Lcom/lge/media/TimedTextEx;->mTextAttribute:Ljava/util/ArrayList;

    .line 235
    iput-object v1, p0, Lcom/lge/media/TimedTextEx;->mSetCurWin:Ljava/util/ArrayList;

    .line 236
    iput-object v1, p0, Lcom/lge/media/TimedTextEx;->mClearWins:Ljava/util/ArrayList;

    .line 237
    iput-object v1, p0, Lcom/lge/media/TimedTextEx;->mDefineWin:Ljava/util/ArrayList;

    .line 238
    iput-object v1, p0, Lcom/lge/media/TimedTextEx;->mDelWins:Ljava/util/ArrayList;

    .line 239
    iput-object v1, p0, Lcom/lge/media/TimedTextEx;->mDisplayWins:Ljava/util/ArrayList;

    .line 240
    iput-object v1, p0, Lcom/lge/media/TimedTextEx;->mHideWins:Ljava/util/ArrayList;

    .line 241
    iput-object v1, p0, Lcom/lge/media/TimedTextEx;->mToggleWins:Ljava/util/ArrayList;

    .line 242
    iput-object v1, p0, Lcom/lge/media/TimedTextEx;->mSetWinAttribute:Ljava/util/ArrayList;

    .line 243
    iput-object v1, p0, Lcom/lge/media/TimedTextEx;->mSetPenAttribute:Ljava/util/ArrayList;

    .line 244
    iput-object v1, p0, Lcom/lge/media/TimedTextEx;->mSetPenColor:Ljava/util/ArrayList;

    .line 245
    iput-object v1, p0, Lcom/lge/media/TimedTextEx;->mSetPenLocation:Ljava/util/ArrayList;

    .line 246
    iput-object v1, p0, Lcom/lge/media/TimedTextEx;->mDelay:Ljava/util/ArrayList;

    .line 247
    iput-object v1, p0, Lcom/lge/media/TimedTextEx;->mDelayCancel:Ljava/util/ArrayList;

    .line 248
    iput-object v1, p0, Lcom/lge/media/TimedTextEx;->mReset:Ljava/util/ArrayList;

    .line 249
    iput-object v1, p0, Lcom/lge/media/TimedTextEx;->mHorizontalCarriageReturn:Ljava/util/ArrayList;

    .line 250
    iput-object v1, p0, Lcom/lge/media/TimedTextEx;->mFormFeed:Ljava/util/ArrayList;

    .line 252
    iput-object v1, p0, Lcom/lge/media/TimedTextEx;->mMimeTypeChars:Ljava/lang/String;

    .line 253
    iput v3, p0, Lcom/lge/media/TimedTextEx;->mStartTimeMs:I

    .line 254
    iput v3, p0, Lcom/lge/media/TimedTextEx;->mLanguageCount:I

    .line 255
    iput v3, p0, Lcom/lge/media/TimedTextEx;->mIndex:I

    .line 257
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/media/TimedTextEx;->USE_CHAR:I

    .line 1409
    invoke-direct {p0, p1}, Lcom/lge/media/TimedTextEx;->parseParcel(Landroid/os/Parcel;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1410
    iget-object v0, p0, Lcom/lge/media/TimedTextEx;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1411
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parseParcel() fails"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1413
    :cond_0
    return-void
.end method

.method private containsKey(I)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 2805
    invoke-direct {p0, p1}, Lcom/lge/media/TimedTextEx;->isValidKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/media/TimedTextEx;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2806
    const/4 v0, 0x1

    .line 2808
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initCommand()V
    .locals 43

    .prologue
    .line 2138
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/media/TimedTextEx;->mLanguageCount:I

    if-gtz v5, :cond_1

    .line 2389
    :cond_0
    return-void

    .line 2142
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/TimedTextEx;->mEraseDisMem:Ljava/util/ArrayList;

    if-nez v5, :cond_2

    .line 2143
    new-instance v24, Lcom/lge/media/TimedTextEx$EraseDisplayMemory;

    const/4 v5, -0x1

    move-object/from16 v0, v24

    invoke-direct {v0, v5}, Lcom/lge/media/TimedTextEx$EraseDisplayMemory;-><init>(I)V

    .line 2144
    .local v24, eraseDisMem:Lcom/lge/media/TimedTextEx$EraseDisplayMemory;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lge/media/TimedTextEx;->mEraseDisMem:Ljava/util/ArrayList;

    .line 2145
    const/16 v28, 0x0

    .local v28, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/media/TimedTextEx;->mLanguageCount:I

    move/from16 v0, v28

    if-ge v0, v5, :cond_2

    .line 2146
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/TimedTextEx;->mEraseDisMem:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2145
    add-int/lit8 v28, v28, 0x1

    goto :goto_0

    .line 2150
    .end local v24           #eraseDisMem:Lcom/lge/media/TimedTextEx$EraseDisplayMemory;
    .end local v28           #i:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/TimedTextEx;->mResumeCaption:Ljava/util/ArrayList;

    if-nez v5, :cond_3

    .line 2151
    new-instance v31, Lcom/lge/media/TimedTextEx$ResumeCaptionLoading;

    const/4 v5, -0x1

    move-object/from16 v0, v31

    invoke-direct {v0, v5}, Lcom/lge/media/TimedTextEx$ResumeCaptionLoading;-><init>(I)V

    .line 2152
    .local v31, resumeCaption:Lcom/lge/media/TimedTextEx$ResumeCaptionLoading;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lge/media/TimedTextEx;->mResumeCaption:Ljava/util/ArrayList;

    .line 2153
    const/16 v28, 0x0

    .restart local v28       #i:I
    :goto_1
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/media/TimedTextEx;->mLanguageCount:I

    move/from16 v0, v28

    if-ge v0, v5, :cond_3

    .line 2154
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/TimedTextEx;->mResumeCaption:Ljava/util/ArrayList;

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2153
    add-int/lit8 v28, v28, 0x1

    goto :goto_1

    .line 2158
    .end local v28           #i:I
    .end local v31           #resumeCaption:Lcom/lge/media/TimedTextEx$ResumeCaptionLoading;
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/TimedTextEx;->mEndofCaption:Ljava/util/ArrayList;

    if-nez v5, :cond_4

    .line 2159
    new-instance v23, Lcom/lge/media/TimedTextEx$EndOfCaption;

    const/4 v5, -0x1

    move-object/from16 v0, v23

    invoke-direct {v0, v5}, Lcom/lge/media/TimedTextEx$EndOfCaption;-><init>(I)V

    .line 2160
    .local v23, endofCaption:Lcom/lge/media/TimedTextEx$EndOfCaption;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lge/media/TimedTextEx;->mEndofCaption:Ljava/util/ArrayList;

    .line 2161
    const/16 v28, 0x0

    .restart local v28       #i:I
    :goto_2
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/media/TimedTextEx;->mLanguageCount:I

    move/from16 v0, v28

    if-ge v0, v5, :cond_4

    .line 2162
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/TimedTextEx;->mEndofCaption:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2161
    add-int/lit8 v28, v28, 0x1

    goto :goto_2

    .line 2166
    .end local v23           #endofCaption:Lcom/lge/media/TimedTextEx$EndOfCaption;
    .end local v28           #i:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/TimedTextEx;->mTapOffset1:Ljava/util/ArrayList;

    if-nez v5, :cond_5

    .line 2167
    new-instance v38, Lcom/lge/media/TimedTextEx$TapOffset1;

    const/4 v5, -0x1

    move-object/from16 v0, v38

    invoke-direct {v0, v5}, Lcom/lge/media/TimedTextEx$TapOffset1;-><init>(I)V

    .line 2168
    .local v38, tapOffset1:Lcom/lge/media/TimedTextEx$TapOffset1;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lge/media/TimedTextEx;->mTapOffset1:Ljava/util/ArrayList;

    .line 2169
    const/16 v28, 0x0

    .restart local v28       #i:I
    :goto_3
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/media/TimedTextEx;->mLanguageCount:I

    move/from16 v0, v28

    if-ge v0, v5, :cond_5

    .line 2170
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/TimedTextEx;->mTapOffset1:Ljava/util/ArrayList;

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2169
    add-int/lit8 v28, v28, 0x1

    goto :goto_3

    .line 2174
    .end local v28           #i:I
    .end local v38           #tapOffset1:Lcom/lge/media/TimedTextEx$TapOffset1;
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/TimedTextEx;->mTapOffset2:Ljava/util/ArrayList;

    if-nez v5, :cond_6

    .line 2175
    new-instance v39, Lcom/lge/media/TimedTextEx$TapOffset2;

    const/4 v5, -0x1

    move-object/from16 v0, v39

    invoke-direct {v0, v5}, Lcom/lge/media/TimedTextEx$TapOffset2;-><init>(I)V

    .line 2176
    .local v39, tapOffset2:Lcom/lge/media/TimedTextEx$TapOffset2;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lge/media/TimedTextEx;->mTapOffset2:Ljava/util/ArrayList;

    .line 2177
    const/16 v28, 0x0

    .restart local v28       #i:I
    :goto_4
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/media/TimedTextEx;->mLanguageCount:I

    move/from16 v0, v28

    if-ge v0, v5, :cond_6

    .line 2178
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/TimedTextEx;->mTapOffset2:Ljava/util/ArrayList;

    move-object/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2177
    add-int/lit8 v28, v28, 0x1

    goto :goto_4

    .line 2182
    .end local v28           #i:I
    .end local v39           #tapOffset2:Lcom/lge/media/TimedTextEx$TapOffset2;
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/TimedTextEx;->mTapOffset3:Ljava/util/ArrayList;

    if-nez v5, :cond_7

    .line 2183
    new-instance v40, Lcom/lge/media/TimedTextEx$TapOffset3;

    const/4 v5, -0x1

    move-object/from16 v0, v40

    invoke-direct {v0, v5}, Lcom/lge/media/TimedTextEx$TapOffset3;-><init>(I)V

    .line 2184
    .local v40, tapOffset3:Lcom/lge/media/TimedTextEx$TapOffset3;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lge/media/TimedTextEx;->mTapOffset3:Ljava/util/ArrayList;

    .line 2185
    const/16 v28, 0x0

    .restart local v28       #i:I
    :goto_5
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/media/TimedTextEx;->mLanguageCount:I

    move/from16 v0, v28

    if-ge v0, v5, :cond_7

    .line 2186
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/TimedTextEx;->mTapOffset3:Ljava/util/ArrayList;

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2185
    add-int/lit8 v28, v28, 0x1

    goto :goto_5

    .line 2190
    .end local v28           #i:I
    .end local v40           #tapOffset3:Lcom/lge/media/TimedTextEx$TapOffset3;
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/TimedTextEx;->mRollup2:Ljava/util/ArrayList;

    if-nez v5, :cond_8

    .line 2191
    new-instance v33, Lcom/lge/media/TimedTextEx$Rollup2;

    const/4 v5, -0x1

    move-object/from16 v0, v33

    invoke-direct {v0, v5}, Lcom/lge/media/TimedTextEx$Rollup2;-><init>(I)V

    .line 2192
    .local v33, rollup2:Lcom/lge/media/TimedTextEx$Rollup2;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lge/media/TimedTextEx;->mRollup2:Ljava/util/ArrayList;

    .line 2193
    const/16 v28, 0x0

    .restart local v28       #i:I
    :goto_6
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/media/TimedTextEx;->mLanguageCount:I

    move/from16 v0, v28

    if-ge v0, v5, :cond_8

    .line 2194
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/TimedTextEx;->mRollup2:Ljava/util/ArrayList;

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2193
    add-int/lit8 v28, v28, 0x1

    goto :goto_6

    .line 2198
    .end local v28           #i:I
    .end local v33           #rollup2:Lcom/lge/media/TimedTextEx$Rollup2;
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/TimedTextEx;->mRollup3:Ljava/util/ArrayList;

    if-nez v5, :cond_9

    .line 2199
    new-instance v34, Lcom/lge/media/TimedTextEx$Rollup3;

    const/4 v5, -0x1

    move-object/from16 v0, v34

    invoke-direct {v0, v5}, Lcom/lge/media/TimedTextEx$Rollup3;-><init>(I)V

    .line 2200
    .local v34, rollup3:Lcom/lge/media/TimedTextEx$Rollup3;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lge/media/TimedTextEx;->mRollup3:Ljava/util/ArrayList;

    .line 2201
    const/16 v28, 0x0

    .restart local v28       #i:I
    :goto_7
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/media/TimedTextEx;->mLanguageCount:I

    move/from16 v0, v28

    if-ge v0, v5, :cond_9

    .line 2202
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/TimedTextEx;->mRollup3:Ljava/util/ArrayList;

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2201
    add-int/lit8 v28, v28, 0x1

    goto :goto_7

    .line 2206
    .end local v28           #i:I
    .end local v34           #rollup3:Lcom/lge/media/TimedTextEx$Rollup3;
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/TimedTextEx;->mRollup4:Ljava/util/ArrayList;

    if-nez v5, :cond_a

    .line 2207
    new-instance v35, Lcom/lge/media/TimedTextEx$Rollup4;

    const/4 v5, -0x1

    move-object/from16 v0, v35

    invoke-direct {v0, v5}, Lcom/lge/media/TimedTextEx$Rollup4;-><init>(I)V

    .line 2208
    .local v35, rollup4:Lcom/lge/media/TimedTextEx$Rollup4;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lge/media/TimedTextEx;->mRollup4:Ljava/util/ArrayList;

    .line 2209
    const/16 v28, 0x0

    .restart local v28       #i:I
    :goto_8
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/media/TimedTextEx;->mLanguageCount:I

    move/from16 v0, v28

    if-ge v0, v5, :cond_a

    .line 2210
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/TimedTextEx;->mRollup4:Ljava/util/ArrayList;

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2209
    add-int/lit8 v28, v28, 0x1

    goto :goto_8

    .line 2214
    .end local v28           #i:I
    .end local v35           #rollup4:Lcom/lge/media/TimedTextEx$Rollup4;
    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/TimedTextEx;->mCR:Ljava/util/ArrayList;

    if-nez v5, :cond_b

    .line 2215
    new-instance v15, Lcom/lge/media/TimedTextEx$CarriageReturn;

    const/4 v5, -0x1

    invoke-direct {v15, v5}, Lcom/lge/media/TimedTextEx$CarriageReturn;-><init>(I)V

    .line 2216
    .local v15, CR:Lcom/lge/media/TimedTextEx$CarriageReturn;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lge/media/TimedTextEx;->mCR:Ljava/util/ArrayList;

    .line 2217
    const/16 v28, 0x0

    .restart local v28       #i:I
    :goto_9
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/media/TimedTextEx;->mLanguageCount:I

    move/from16 v0, v28

    if-ge v0, v5, :cond_b

    .line 2218
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/TimedTextEx;->mCR:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2217
    add-int/lit8 v28, v28, 0x1

    goto :goto_9

    .line 2222
    .end local v15           #CR:Lcom/lge/media/TimedTextEx$CarriageReturn;
    .end local v28           #i:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/TimedTextEx;->mEraseNonDisMem:Ljava/util/ArrayList;

    if-nez v5, :cond_c

    .line 2223
    new-instance v25, Lcom/lge/media/TimedTextEx$EraseNondisplayMemory;

    const/4 v5, -0x1

    move-object/from16 v0, v25

    invoke-direct {v0, v5}, Lcom/lge/media/TimedTextEx$EraseNondisplayMemory;-><init>(I)V

    .line 2224
    .local v25, eraseNonDisMem:Lcom/lge/media/TimedTextEx$EraseNondisplayMemory;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lge/media/TimedTextEx;->mEraseNonDisMem:Ljava/util/ArrayList;

    .line 2225
    const/16 v28, 0x0

    .restart local v28       #i:I
    :goto_a
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/media/TimedTextEx;->mLanguageCount:I

    move/from16 v0, v28

    if-ge v0, v5, :cond_c

    .line 2226
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/TimedTextEx;->mEraseNonDisMem:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2225
    add-int/lit8 v28, v28, 0x1

    goto :goto_a

    .line 2230
    .end local v25           #eraseNonDisMem:Lcom/lge/media/TimedTextEx$EraseNondisplayMemory;
    .end local v28           #i:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/TimedTextEx;->mBackspace:Ljava/util/ArrayList;

    if-nez v5, :cond_d

    .line 2231
    new-instance v17, Lcom/lge/media/TimedTextEx$Backspace;

    const/4 v5, -0x1

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Lcom/lge/media/TimedTextEx$Backspace;-><init>(I)V

    .line 2232
    .local v17, backSpace:Lcom/lge/media/TimedTextEx$Backspace;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lge/media/TimedTextEx;->mBackspace:Ljava/util/ArrayList;

    .line 2233
    const/16 v28, 0x0

    .restart local v28       #i:I
    :goto_b
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/media/TimedTextEx;->mLanguageCount:I

    move/from16 v0, v28

    if-ge v0, v5, :cond_d

    .line 2234
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/TimedTextEx;->mBackspace:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2233
    add-int/lit8 v28, v28, 0x1

    goto :goto_b

    .line 2238
    .end local v17           #backSpace:Lcom/lge/media/TimedTextEx$Backspace;
    .end local v28           #i:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/TimedTextEx;->mResumeTextDis:Ljava/util/ArrayList;

    if-nez v5, :cond_e

    .line 2239
    new-instance v32, Lcom/lge/media/TimedTextEx$ResumeTextDisplay;

    const/4 v5, -0x1

    move-object/from16 v0, v32

    invoke-direct {v0, v5}, Lcom/lge/media/TimedTextEx$ResumeTextDisplay;-><init>(I)V

    .line 2240
    .local v32, resumeTextDis:Lcom/lge/media/TimedTextEx$ResumeTextDisplay;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lge/media/TimedTextEx;->mResumeTextDis:Ljava/util/ArrayList;

    .line 2241
    const/16 v28, 0x0

    .restart local v28       #i:I
    :goto_c
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/media/TimedTextEx;->mLanguageCount:I

    move/from16 v0, v28

    if-ge v0, v5, :cond_e

    .line 2242
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/TimedTextEx;->mResumeTextDis:Ljava/util/ArrayList;

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2241
    add-int/lit8 v28, v28, 0x1

    goto :goto_c

    .line 2246
    .end local v28           #i:I
    .end local v32           #resumeTextDis:Lcom/lge/media/TimedTextEx$ResumeTextDisplay;
    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/TimedTextEx;->mPreambleAdressCode:Ljava/util/ArrayList;

    if-nez v5, :cond_f

    .line 2247
    new-instance v29, Lcom/lge/media/TimedTextEx$PreambleAdressCode;

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    move-object/from16 v0, v29

    invoke-direct {v0, v5, v6, v7, v8}, Lcom/lge/media/TimedTextEx$PreambleAdressCode;-><init>(IIII)V

    .line 2248
    .local v29, preambleAdressCode:Lcom/lge/media/TimedTextEx$PreambleAdressCode;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lge/media/TimedTextEx;->mPreambleAdressCode:Ljava/util/ArrayList;

    .line 2249
    const/16 v28, 0x0

    .restart local v28       #i:I
    :goto_d
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/media/TimedTextEx;->mLanguageCount:I

    move/from16 v0, v28

    if-ge v0, v5, :cond_f

    .line 2250
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/TimedTextEx;->mPreambleAdressCode:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2249
    add-int/lit8 v28, v28, 0x1

    goto :goto_d

    .line 2254
    .end local v28           #i:I
    .end local v29           #preambleAdressCode:Lcom/lge/media/TimedTextEx$PreambleAdressCode;
    :cond_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/TimedTextEx;->mTextAttribute:Ljava/util/ArrayList;

    if-nez v5, :cond_10

    .line 2255
    new-instance v41, Lcom/lge/media/TimedTextEx$TextAttribute;

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object/from16 v0, v41

    invoke-direct {v0, v5, v6}, Lcom/lge/media/TimedTextEx$TextAttribute;-><init>(II)V

    .line 2256
    .local v41, textAttribute:Lcom/lge/media/TimedTextEx$TextAttribute;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lge/media/TimedTextEx;->mTextAttribute:Ljava/util/ArrayList;

    .line 2257
    const/16 v28, 0x0

    .restart local v28       #i:I
    :goto_e
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/media/TimedTextEx;->mLanguageCount:I

    move/from16 v0, v28

    if-ge v0, v5, :cond_10

    .line 2258
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/TimedTextEx;->mTextAttribute:Ljava/util/ArrayList;

    move-object/from16 v0, v41

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2257
    add-int/lit8 v28, v28, 0x1

    goto :goto_e

    .line 2262
    .end local v28           #i:I
    .end local v41           #textAttribute:Lcom/lge/media/TimedTextEx$TextAttribute;
    :cond_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/TimedTextEx;->mSetCurWin:Ljava/util/ArrayList;

    if-nez v5, :cond_11

    .line 2263
    new-instance v36, Lcom/lge/media/TimedTextEx$SetCurrentWindow;

    const/4 v5, -0x1

    move-object/from16 v0, v36

    invoke-direct {v0, v5}, Lcom/lge/media/TimedTextEx$SetCurrentWindow;-><init>(I)V

    .line 2264
    .local v36, setCurWin:Lcom/lge/media/TimedTextEx$SetCurrentWindow;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lge/media/TimedTextEx;->mSetCurWin:Ljava/util/ArrayList;

    .line 2265
    const/16 v28, 0x0

    .restart local v28       #i:I
    :goto_f
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/media/TimedTextEx;->mLanguageCount:I

    move/from16 v0, v28

    if-ge v0, v5, :cond_11

    .line 2266
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/TimedTextEx;->mSetCurWin:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2265
    add-int/lit8 v28, v28, 0x1

    goto :goto_f

    .line 2270
    .end local v28           #i:I
    .end local v36           #setCurWin:Lcom/lge/media/TimedTextEx$SetCurrentWindow;
    :cond_11
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/TimedTextEx;->mClearWins:Ljava/util/ArrayList;

    if-nez v5, :cond_12

    .line 2271
    new-instance v19, Lcom/lge/media/TimedTextEx$ClearWindows;

    const/4 v5, -0x1

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Lcom/lge/media/TimedTextEx$ClearWindows;-><init>(I)V

    .line 2272
    .local v19, clearWins:Lcom/lge/media/TimedTextEx$ClearWindows;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lge/media/TimedTextEx;->mClearWins:Ljava/util/ArrayList;

    .line 2273
    const/16 v28, 0x0

    .restart local v28       #i:I
    :goto_10
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/media/TimedTextEx;->mLanguageCount:I

    move/from16 v0, v28

    if-ge v0, v5, :cond_12

    .line 2274
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/TimedTextEx;->mClearWins:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2273
    add-int/lit8 v28, v28, 0x1

    goto :goto_10

    .line 2278
    .end local v19           #clearWins:Lcom/lge/media/TimedTextEx$ClearWindows;
    .end local v28           #i:I
    :cond_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/TimedTextEx;->mDefineWin:Ljava/util/ArrayList;

    if-nez v5, :cond_13

    .line 2279
    new-instance v1, Lcom/lge/media/TimedTextEx$DefineWindow;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/4 v14, -0x1

    invoke-direct/range {v1 .. v14}, Lcom/lge/media/TimedTextEx$DefineWindow;-><init>(IIIIIIIIIIIII)V

    .line 2280
    .local v1, defineWin:Lcom/lge/media/TimedTextEx$DefineWindow;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lge/media/TimedTextEx;->mDefineWin:Ljava/util/ArrayList;

    .line 2281
    const/16 v28, 0x0

    .restart local v28       #i:I
    :goto_11
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/media/TimedTextEx;->mLanguageCount:I

    move/from16 v0, v28

    if-ge v0, v5, :cond_13

    .line 2282
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/TimedTextEx;->mDefineWin:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2281
    add-int/lit8 v28, v28, 0x1

    goto :goto_11

    .line 2286
    .end local v1           #defineWin:Lcom/lge/media/TimedTextEx$DefineWindow;
    .end local v28           #i:I
    :cond_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/TimedTextEx;->mDelWins:Ljava/util/ArrayList;

    if-nez v5, :cond_14

    .line 2287
    new-instance v21, Lcom/lge/media/TimedTextEx$DeleteWindows;

    const/4 v5, -0x1

    move-object/from16 v0, v21

    invoke-direct {v0, v5}, Lcom/lge/media/TimedTextEx$DeleteWindows;-><init>(I)V

    .line 2288
    .local v21, delWins:Lcom/lge/media/TimedTextEx$DeleteWindows;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lge/media/TimedTextEx;->mDelWins:Ljava/util/ArrayList;

    .line 2289
    const/16 v28, 0x0

    .restart local v28       #i:I
    :goto_12
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/media/TimedTextEx;->mLanguageCount:I

    move/from16 v0, v28

    if-ge v0, v5, :cond_14

    .line 2290
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/TimedTextEx;->mDelWins:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2289
    add-int/lit8 v28, v28, 0x1

    goto :goto_12

    .line 2294
    .end local v21           #delWins:Lcom/lge/media/TimedTextEx$DeleteWindows;
    .end local v28           #i:I
    :cond_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/TimedTextEx;->mDisplayWins:Ljava/util/ArrayList;

    if-nez v5, :cond_15

    .line 2295
    new-instance v22, Lcom/lge/media/TimedTextEx$DisplayWindows;

    const/4 v5, -0x1

    move-object/from16 v0, v22

    invoke-direct {v0, v5}, Lcom/lge/media/TimedTextEx$DisplayWindows;-><init>(I)V

    .line 2296
    .local v22, displayWins:Lcom/lge/media/TimedTextEx$DisplayWindows;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lge/media/TimedTextEx;->mDisplayWins:Ljava/util/ArrayList;

    .line 2297
    const/16 v28, 0x0

    .restart local v28       #i:I
    :goto_13
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/media/TimedTextEx;->mLanguageCount:I

    move/from16 v0, v28

    if-ge v0, v5, :cond_15

    .line 2298
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/TimedTextEx;->mDisplayWins:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2297
    add-int/lit8 v28, v28, 0x1

    goto :goto_13

    .line 2302
    .end local v22           #displayWins:Lcom/lge/media/TimedTextEx$DisplayWindows;
    .end local v28           #i:I
    :cond_15
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/TimedTextEx;->mHideWins:Ljava/util/ArrayList;

    if-nez v5, :cond_16

    .line 2303
    new-instance v26, Lcom/lge/media/TimedTextEx$HideWindows;

    const/4 v5, -0x1

    move-object/from16 v0, v26

    invoke-direct {v0, v5}, Lcom/lge/media/TimedTextEx$HideWindows;-><init>(I)V

    .line 2304
    .local v26, hideWins:Lcom/lge/media/TimedTextEx$HideWindows;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lge/media/TimedTextEx;->mHideWins:Ljava/util/ArrayList;

    .line 2305
    const/16 v28, 0x0

    .restart local v28       #i:I
    :goto_14
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/media/TimedTextEx;->mLanguageCount:I

    move/from16 v0, v28

    if-ge v0, v5, :cond_16

    .line 2306
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/TimedTextEx;->mHideWins:Ljava/util/ArrayList;

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2305
    add-int/lit8 v28, v28, 0x1

    goto :goto_14

    .line 2310
    .end local v26           #hideWins:Lcom/lge/media/TimedTextEx$HideWindows;
    .end local v28           #i:I
    :cond_16
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/TimedTextEx;->mToggleWins:Ljava/util/ArrayList;

    if-nez v5, :cond_17

    .line 2311
    new-instance v42, Lcom/lge/media/TimedTextEx$ToggleWindows;

    const/4 v5, -0x1

    move-object/from16 v0, v42

    invoke-direct {v0, v5}, Lcom/lge/media/TimedTextEx$ToggleWindows;-><init>(I)V

    .line 2312
    .local v42, toggleWins:Lcom/lge/media/TimedTextEx$ToggleWindows;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lge/media/TimedTextEx;->mToggleWins:Ljava/util/ArrayList;

    .line 2313
    const/16 v28, 0x0

    .restart local v28       #i:I
    :goto_15
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/media/TimedTextEx;->mLanguageCount:I

    move/from16 v0, v28

    if-ge v0, v5, :cond_17

    .line 2314
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/TimedTextEx;->mToggleWins:Ljava/util/ArrayList;

    move-object/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2313
    add-int/lit8 v28, v28, 0x1

    goto :goto_15

    .line 2318
    .end local v28           #i:I
    .end local v42           #toggleWins:Lcom/lge/media/TimedTextEx$ToggleWindows;
    :cond_17
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/TimedTextEx;->mSetWinAttribute:Ljava/util/ArrayList;

    if-nez v5, :cond_18

    .line 2319
    new-instance v2, Lcom/lge/media/TimedTextEx$SetWindowAttribute;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, -0x1

    invoke-direct/range {v2 .. v13}, Lcom/lge/media/TimedTextEx$SetWindowAttribute;-><init>(IIIIIIIIIII)V

    .line 2320
    .local v2, setWinAttribute:Lcom/lge/media/TimedTextEx$SetWindowAttribute;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lge/media/TimedTextEx;->mSetWinAttribute:Ljava/util/ArrayList;

    .line 2321
    const/16 v28, 0x0

    .restart local v28       #i:I
    :goto_16
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/media/TimedTextEx;->mLanguageCount:I

    move/from16 v0, v28

    if-ge v0, v5, :cond_18

    .line 2322
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/TimedTextEx;->mSetWinAttribute:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2321
    add-int/lit8 v28, v28, 0x1

    goto :goto_16

    .line 2326
    .end local v2           #setWinAttribute:Lcom/lge/media/TimedTextEx$SetWindowAttribute;
    .end local v28           #i:I
    :cond_18
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/TimedTextEx;->mSetPenAttribute:Ljava/util/ArrayList;

    if-nez v5, :cond_19

    .line 2327
    new-instance v3, Lcom/lge/media/TimedTextEx$SetPenAttribute;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-direct/range {v3 .. v10}, Lcom/lge/media/TimedTextEx$SetPenAttribute;-><init>(IIIIIII)V

    .line 2328
    .local v3, setPenAttribute:Lcom/lge/media/TimedTextEx$SetPenAttribute;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lge/media/TimedTextEx;->mSetPenAttribute:Ljava/util/ArrayList;

    .line 2329
    const/16 v28, 0x0

    .restart local v28       #i:I
    :goto_17
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/media/TimedTextEx;->mLanguageCount:I

    move/from16 v0, v28

    if-ge v0, v5, :cond_19

    .line 2330
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/TimedTextEx;->mSetPenAttribute:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2329
    add-int/lit8 v28, v28, 0x1

    goto :goto_17

    .line 2334
    .end local v3           #setPenAttribute:Lcom/lge/media/TimedTextEx$SetPenAttribute;
    .end local v28           #i:I
    :cond_19
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/TimedTextEx;->mSetPenColor:Ljava/util/ArrayList;

    if-nez v5, :cond_1a

    .line 2335
    new-instance v4, Lcom/lge/media/TimedTextEx$SetPenColor;

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-direct/range {v4 .. v9}, Lcom/lge/media/TimedTextEx$SetPenColor;-><init>(IIIII)V

    .line 2336
    .local v4, setPenColor:Lcom/lge/media/TimedTextEx$SetPenColor;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lge/media/TimedTextEx;->mSetPenColor:Ljava/util/ArrayList;

    .line 2337
    const/16 v28, 0x0

    .restart local v28       #i:I
    :goto_18
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/media/TimedTextEx;->mLanguageCount:I

    move/from16 v0, v28

    if-ge v0, v5, :cond_1a

    .line 2338
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/TimedTextEx;->mSetPenColor:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2337
    add-int/lit8 v28, v28, 0x1

    goto :goto_18

    .line 2342
    .end local v4           #setPenColor:Lcom/lge/media/TimedTextEx$SetPenColor;
    .end local v28           #i:I
    :cond_1a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/TimedTextEx;->mSetPenLocation:Ljava/util/ArrayList;

    if-nez v5, :cond_1b

    .line 2343
    new-instance v37, Lcom/lge/media/TimedTextEx$SetPenLocation;

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object/from16 v0, v37

    invoke-direct {v0, v5, v6}, Lcom/lge/media/TimedTextEx$SetPenLocation;-><init>(II)V

    .line 2344
    .local v37, setPenLocation:Lcom/lge/media/TimedTextEx$SetPenLocation;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lge/media/TimedTextEx;->mSetPenLocation:Ljava/util/ArrayList;

    .line 2345
    const/16 v28, 0x0

    .restart local v28       #i:I
    :goto_19
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/media/TimedTextEx;->mLanguageCount:I

    move/from16 v0, v28

    if-ge v0, v5, :cond_1b

    .line 2346
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/TimedTextEx;->mSetPenLocation:Ljava/util/ArrayList;

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2345
    add-int/lit8 v28, v28, 0x1

    goto :goto_19

    .line 2350
    .end local v28           #i:I
    .end local v37           #setPenLocation:Lcom/lge/media/TimedTextEx$SetPenLocation;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/TimedTextEx;->mDelay:Ljava/util/ArrayList;

    if-nez v5, :cond_1c

    .line 2351
    new-instance v20, Lcom/lge/media/TimedTextEx$Delay;

    const/4 v5, -0x1

    move-object/from16 v0, v20

    invoke-direct {v0, v5}, Lcom/lge/media/TimedTextEx$Delay;-><init>(I)V

    .line 2352
    .local v20, d:Lcom/lge/media/TimedTextEx$Delay;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lge/media/TimedTextEx;->mDelay:Ljava/util/ArrayList;

    .line 2353
    const/16 v28, 0x0

    .restart local v28       #i:I
    :goto_1a
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/media/TimedTextEx;->mLanguageCount:I

    move/from16 v0, v28

    if-ge v0, v5, :cond_1c

    .line 2354
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/TimedTextEx;->mDelay:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2353
    add-int/lit8 v28, v28, 0x1

    goto :goto_1a

    .line 2358
    .end local v20           #d:Lcom/lge/media/TimedTextEx$Delay;
    .end local v28           #i:I
    :cond_1c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/TimedTextEx;->mDelayCancel:Ljava/util/ArrayList;

    if-nez v5, :cond_1d

    .line 2359
    new-instance v18, Lcom/lge/media/TimedTextEx$DelayCancel;

    const/4 v5, -0x1

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Lcom/lge/media/TimedTextEx$DelayCancel;-><init>(I)V

    .line 2360
    .local v18, cancel:Lcom/lge/media/TimedTextEx$DelayCancel;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lge/media/TimedTextEx;->mDelayCancel:Ljava/util/ArrayList;

    .line 2361
    const/16 v28, 0x0

    .restart local v28       #i:I
    :goto_1b
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/media/TimedTextEx;->mLanguageCount:I

    move/from16 v0, v28

    if-ge v0, v5, :cond_1d

    .line 2362
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/TimedTextEx;->mDelayCancel:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2361
    add-int/lit8 v28, v28, 0x1

    goto :goto_1b

    .line 2366
    .end local v18           #cancel:Lcom/lge/media/TimedTextEx$DelayCancel;
    .end local v28           #i:I
    :cond_1d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/TimedTextEx;->mReset:Ljava/util/ArrayList;

    if-nez v5, :cond_1e

    .line 2367
    new-instance v30, Lcom/lge/media/TimedTextEx$Reset;

    const/4 v5, -0x1

    move-object/from16 v0, v30

    invoke-direct {v0, v5}, Lcom/lge/media/TimedTextEx$Reset;-><init>(I)V

    .line 2368
    .local v30, r:Lcom/lge/media/TimedTextEx$Reset;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lge/media/TimedTextEx;->mReset:Ljava/util/ArrayList;

    .line 2369
    const/16 v28, 0x0

    .restart local v28       #i:I
    :goto_1c
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/media/TimedTextEx;->mLanguageCount:I

    move/from16 v0, v28

    if-ge v0, v5, :cond_1e

    .line 2370
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/TimedTextEx;->mReset:Ljava/util/ArrayList;

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2369
    add-int/lit8 v28, v28, 0x1

    goto :goto_1c

    .line 2374
    .end local v28           #i:I
    .end local v30           #r:Lcom/lge/media/TimedTextEx$Reset;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/TimedTextEx;->mHorizontalCarriageReturn:Ljava/util/ArrayList;

    if-nez v5, :cond_1f

    .line 2375
    new-instance v27, Lcom/lge/media/TimedTextEx$HorizontalCarriageReturn;

    const/4 v5, -0x1

    move-object/from16 v0, v27

    invoke-direct {v0, v5}, Lcom/lge/media/TimedTextEx$HorizontalCarriageReturn;-><init>(I)V

    .line 2376
    .local v27, horizontalCarriageReturn:Lcom/lge/media/TimedTextEx$HorizontalCarriageReturn;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lge/media/TimedTextEx;->mHorizontalCarriageReturn:Ljava/util/ArrayList;

    .line 2377
    const/16 v28, 0x0

    .restart local v28       #i:I
    :goto_1d
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/media/TimedTextEx;->mLanguageCount:I

    move/from16 v0, v28

    if-ge v0, v5, :cond_1f

    .line 2378
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/TimedTextEx;->mHorizontalCarriageReturn:Ljava/util/ArrayList;

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2377
    add-int/lit8 v28, v28, 0x1

    goto :goto_1d

    .line 2382
    .end local v27           #horizontalCarriageReturn:Lcom/lge/media/TimedTextEx$HorizontalCarriageReturn;
    .end local v28           #i:I
    :cond_1f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/TimedTextEx;->mFormFeed:Ljava/util/ArrayList;

    if-nez v5, :cond_0

    .line 2383
    new-instance v16, Lcom/lge/media/TimedTextEx$FormFeed;

    const/4 v5, -0x1

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Lcom/lge/media/TimedTextEx$FormFeed;-><init>(I)V

    .line 2384
    .local v16, FF:Lcom/lge/media/TimedTextEx$FormFeed;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lge/media/TimedTextEx;->mFormFeed:Ljava/util/ArrayList;

    .line 2385
    const/16 v28, 0x0

    .restart local v28       #i:I
    :goto_1e
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/media/TimedTextEx;->mLanguageCount:I

    move/from16 v0, v28

    if-ge v0, v5, :cond_0

    .line 2386
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/media/TimedTextEx;->mFormFeed:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2385
    add-int/lit8 v28, v28, 0x1

    goto :goto_1e
.end method

.method private isValidKey(I)Z
    .locals 2
    .parameter "key"

    .prologue
    const/4 v0, 0x1

    .line 2791
    if-lt p1, v0, :cond_0

    const/16 v1, 0xe8

    if-le p1, v1, :cond_2

    :cond_0
    const/16 v1, 0x12d

    if-lt p1, v1, :cond_1

    const/16 v1, 0x197

    if-le p1, v1, :cond_2

    .line 2793
    :cond_1
    const/4 v0, 0x0

    .line 2795
    :cond_2
    return v0
.end method

.method private parseParcel(Landroid/os/Parcel;)Z
    .locals 29
    .parameter "parcel"

    .prologue
    .line 1517
    const/16 v26, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1518
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v26

    if-nez v26, :cond_0

    .line 1519
    const-string v26, "TimedTextEx"

    const-string v27, "parseParcel data zero "

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    const/16 v26, 0x0

    .line 1780
    :goto_0
    return v26

    .line 1523
    :cond_0
    const/4 v8, 0x0

    .line 1524
    .local v8, isCommandKey:Z
    const/4 v5, 0x0

    .line 1525
    .local v5, dataPosition:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 1526
    .local v24, type:I
    const/16 v26, 0x192

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_12

    .line 1529
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 1530
    const/16 v26, 0x1

    move/from16 v0, v24

    move/from16 v1, v26

    if-eq v0, v1, :cond_1

    .line 1531
    const-string v26, "TimedTextEx"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "!= KEY_MEDIA_MIMETYPE"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    const/16 v26, 0x0

    goto :goto_0

    .line 1534
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 1535
    .local v18, mimeTypeLen:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v17

    .line 1536
    .local v17, mimeType:[B
    if-eqz v17, :cond_2

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v26, v0

    if-nez v26, :cond_3

    .line 1537
    :cond_2
    const-string v26, "TimedTextEx"

    const-string v27, "mimeType null"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/media/TimedTextEx;->mMimeTypeChars:Ljava/lang/String;

    .line 1545
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 1546
    const/16 v26, 0x2

    move/from16 v0, v24

    move/from16 v1, v26

    if-eq v0, v1, :cond_4

    .line 1547
    const-string v26, "TimedTextEx"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "!= KEY_START_TIME_US"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 1540
    :cond_3
    new-instance v26, Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/media/TimedTextEx;->mMimeTypeChars:Ljava/lang/String;

    .line 1541
    const-string v26, "TimedTextEx"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "KEY_MEDIA_MIMETYPE "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/TimedTextEx;->mMimeTypeChars:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1550
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/media/TimedTextEx;->mStartTimeMs:I

    .line 1553
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 1554
    const/16 v26, 0x3

    move/from16 v0, v24

    move/from16 v1, v26

    if-eq v0, v1, :cond_5

    .line 1555
    const-string v26, "TimedTextEx"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "!= KEY_LANGUAGE_COUNT"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 1558
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/media/TimedTextEx;->mLanguageCount:I

    .line 1560
    const-string v26, "TimedTextEx"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "KEY_LANGUAGE_COUNT ["

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/media/TimedTextEx;->mLanguageCount:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "] "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    const/4 v4, 0x0

    .local v4, count:I
    :goto_2
    const/16 v26, 0x44

    move/from16 v0, v26

    if-ge v4, v0, :cond_6

    .line 1563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/TimedTextEx;->mServiceNumberList:[I

    move-object/from16 v26, v0

    const/16 v27, -0x1

    aput v27, v26, v4

    .line 1562
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1566
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/lge/media/TimedTextEx;->initCommand()V

    .line 1568
    const/4 v7, 0x0

    .local v7, i:I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/media/TimedTextEx;->mLanguageCount:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v7, v0, :cond_15

    .line 1569
    move-object/from16 v0, p0

    iput v7, v0, Lcom/lge/media/TimedTextEx;->mIndex:I

    .line 1571
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 1572
    const/16 v26, 0x1c

    move/from16 v0, v24

    move/from16 v1, v26

    if-eq v0, v1, :cond_7

    .line 1573
    const-string v26, "TimedTextEx"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "!= KEY_EX_MAX_SERVICE_NUM"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 1576
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/media/TimedTextEx;->mServiceNumberMax:I

    .line 1579
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 1580
    const/16 v26, 0x1b

    move/from16 v0, v24

    move/from16 v1, v26

    if-eq v0, v1, :cond_8

    .line 1581
    const-string v26, "TimedTextEx"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "!= KEY_EX_SERVICE_NUM"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 1584
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 1585
    .local v15, mServiceNumber:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/TimedTextEx;->mServiceNumberList:[I

    move-object/from16 v26, v0

    aput v15, v26, v7

    .line 1588
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 1589
    const/16 v26, 0x4

    move/from16 v0, v24

    move/from16 v1, v26

    if-eq v0, v1, :cond_9

    .line 1590
    const-string v26, "TimedTextEx"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "!= KEY_LANGUAGE"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 1594
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1595
    .local v11, languageLen:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .line 1596
    .local v10, language:[B
    const/4 v14, 0x0

    .line 1598
    .local v14, mLanguageChars:Ljava/lang/String;
    if-eqz v10, :cond_a

    array-length v0, v10

    move/from16 v26, v0

    if-nez v26, :cond_d

    .line 1599
    :cond_a
    const-string v26, "TimedTextEx"

    const-string v27, "language null"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 1608
    const/16 v26, 0x5

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_10

    .line 1609
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 1610
    .local v22, textLen:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v21

    .line 1611
    .local v21, text:[B
    const/16 v16, 0x0

    .line 1613
    .local v16, mTextChars:Ljava/lang/String;
    if-eqz v21, :cond_b

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v26, v0

    if-nez v26, :cond_e

    .line 1614
    :cond_b
    new-instance v16, Ljava/lang/String;

    .end local v16           #mTextChars:Ljava/lang/String;
    invoke-direct/range {v16 .. v16}, Ljava/lang/String;-><init>()V

    .line 1615
    .restart local v16       #mTextChars:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/TimedTextEx;->mTextList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1616
    const-string v26, "TimedTextEx"

    const-string v27, "text null"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/TimedTextEx;->mServiceNumberList:[I

    move-object/from16 v26, v0

    aget v26, v26, v7

    if-lez v26, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v26

    if-lez v26, :cond_c

    .line 1624
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    .line 1625
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 1627
    const-string v26, "TimedTextEx"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Check if there is a command ["

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "] "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "dataPosition:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " type:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    const/16 v26, 0x6

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_f

    .line 1631
    const-string v26, "TimedTextEx"

    const-string v27, "KEY_EX_COMMAND start"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    invoke-direct/range {p0 .. p1}, Lcom/lge/media/TimedTextEx;->readCommand(Landroid/os/Parcel;)Z

    move-result v8

    .line 1568
    .end local v16           #mTextChars:Ljava/lang/String;
    .end local v21           #text:[B
    .end local v22           #textLen:I
    :cond_c
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 1601
    :cond_d
    new-instance v14, Ljava/lang/String;

    .end local v14           #mLanguageChars:Ljava/lang/String;
    invoke-direct {v14, v10}, Ljava/lang/String;-><init>([B)V

    .line 1602
    .restart local v14       #mLanguageChars:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/TimedTextEx;->mLanguageList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1603
    const-string v26, "TimedTextEx"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "KEY_LANGUAGE ["

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "] "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1618
    .restart local v16       #mTextChars:Ljava/lang/String;
    .restart local v21       #text:[B
    .restart local v22       #textLen:I
    :cond_e
    new-instance v16, Ljava/lang/String;

    .end local v16           #mTextChars:Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 1619
    .restart local v16       #mTextChars:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/TimedTextEx;->mTextList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1620
    const-string v26, "TimedTextEx"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "KEY_EX_TEXT ["

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "] "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " textLen:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " text.length:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1634
    :cond_f
    const-string v26, "TimedTextEx"

    const-string v27, "No KEY_EX_COMMAND"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    goto/16 :goto_6

    .line 1638
    .end local v16           #mTextChars:Ljava/lang/String;
    .end local v21           #text:[B
    .end local v22           #textLen:I
    :cond_10
    const/16 v26, 0x1a

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_c

    .line 1639
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 1640
    .local v13, len:I
    const-string v26, "TimedTextEx"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "KEY_EX_DATA len:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    new-array v0, v13, [B

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/media/TimedTextEx;->mData:[B

    .line 1643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/TimedTextEx;->mData:[B

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 1644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/TimedTextEx;->mData:[B

    move-object/from16 v26, v0

    if-nez v26, :cond_11

    .line 1645
    const-string v26, "TimedTextEx"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "**** parseParcel **** KEY_STRUCT_TEXT mData null :"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1646
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/TimedTextEx;->mData:[B

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    if-nez v26, :cond_c

    .line 1647
    const-string v26, "TimedTextEx"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "**** parseParcel **** KEY_STRUCT_TEXT mData.length zero :"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1651
    .end local v4           #count:I
    .end local v7           #i:I
    .end local v10           #language:[B
    .end local v11           #languageLen:I
    .end local v13           #len:I
    .end local v14           #mLanguageChars:Ljava/lang/String;
    .end local v15           #mServiceNumber:I
    .end local v17           #mimeType:[B
    .end local v18           #mimeTypeLen:I
    :cond_12
    const/16 v26, 0x191

    move/from16 v0, v24

    move/from16 v1, v26

    if-eq v0, v1, :cond_15

    .line 1652
    const-string v26, "TimedTextEx"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "[1] Invalid timed text ex key found: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 1663
    .local v9, key:I
    :cond_13
    const/16 v19, 0x0

    .line 1665
    .local v19, object:Ljava/lang/Object;
    packed-switch v9, :pswitch_data_0

    .line 1771
    .end local v19           #object:Ljava/lang/Object;
    :goto_7
    :pswitch_0
    if-eqz v19, :cond_15

    .line 1772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/TimedTextEx;->mKeyObjectMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_14

    .line 1773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/TimedTextEx;->mKeyObjectMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1776
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/TimedTextEx;->mKeyObjectMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1656
    .end local v9           #key:I
    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v26

    if-lez v26, :cond_16

    .line 1657
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1658
    .restart local v9       #key:I
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/lge/media/TimedTextEx;->isValidKey(I)Z

    move-result v26

    if-nez v26, :cond_13

    .line 1659
    const-string v26, "TimedTextEx"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "[2] Invalid timed text ex key found: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 1667
    .restart local v19       #object:Ljava/lang/Object;
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/media/TimedTextEx;->mDisplayFlags:I

    .line 1668
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/media/TimedTextEx;->mDisplayFlags:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    .line 1669
    .local v19, object:Ljava/lang/Integer;
    goto :goto_7

    .line 1672
    .local v19, object:Ljava/lang/Object;
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/media/TimedTextEx;->mBackgroundColorRGBA:I

    .line 1673
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/media/TimedTextEx;->mBackgroundColorRGBA:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    .line 1674
    .local v19, object:Ljava/lang/Integer;
    goto/16 :goto_7

    .line 1677
    .local v19, object:Ljava/lang/Object;
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/media/TimedTextEx;->mHighlightColorRGBA:I

    .line 1678
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/media/TimedTextEx;->mHighlightColorRGBA:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    .line 1679
    .local v19, object:Ljava/lang/Integer;
    goto/16 :goto_7

    .line 1682
    .local v19, object:Ljava/lang/Object;
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/media/TimedTextEx;->mScrollDelay:I

    .line 1683
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/media/TimedTextEx;->mScrollDelay:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    .line 1684
    .local v19, object:Ljava/lang/Integer;
    goto/16 :goto_7

    .line 1687
    .local v19, object:Ljava/lang/Object;
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/media/TimedTextEx;->mWrapText:I

    .line 1688
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/media/TimedTextEx;->mWrapText:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    .line 1689
    .local v19, object:Ljava/lang/Integer;
    goto/16 :goto_7

    .line 1692
    .local v19, object:Ljava/lang/Object;
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/lge/media/TimedTextEx;->readBlinkingText(Landroid/os/Parcel;)V

    .line 1693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/TimedTextEx;->mBlinkingPosList:Ljava/util/List;

    move-object/from16 v19, v0

    .line 1695
    .local v19, object:Ljava/util/List;
    goto/16 :goto_7

    .line 1698
    .local v19, object:Ljava/lang/Object;
    :pswitch_7
    invoke-direct/range {p0 .. p1}, Lcom/lge/media/TimedTextEx;->readFont(Landroid/os/Parcel;)V

    .line 1699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/TimedTextEx;->mFontList:Ljava/util/List;

    move-object/from16 v19, v0

    .line 1700
    .local v19, object:Ljava/util/List;
    goto/16 :goto_7

    .line 1703
    .local v19, object:Ljava/lang/Object;
    :pswitch_8
    invoke-direct/range {p0 .. p1}, Lcom/lge/media/TimedTextEx;->readHighlight(Landroid/os/Parcel;)V

    .line 1704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/TimedTextEx;->mHighlightPosList:Ljava/util/List;

    move-object/from16 v19, v0

    .line 1705
    .local v19, object:Ljava/util/List;
    goto/16 :goto_7

    .line 1708
    .local v19, object:Ljava/lang/Object;
    :pswitch_9
    invoke-direct/range {p0 .. p1}, Lcom/lge/media/TimedTextEx;->readHyperText(Landroid/os/Parcel;)V

    .line 1709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/TimedTextEx;->mHyperTextList:Ljava/util/List;

    move-object/from16 v19, v0

    .line 1711
    .local v19, object:Ljava/util/List;
    goto/16 :goto_7

    .line 1714
    .local v19, object:Ljava/lang/Object;
    :pswitch_a
    invoke-direct/range {p0 .. p1}, Lcom/lge/media/TimedTextEx;->readKaraoke(Landroid/os/Parcel;)V

    .line 1715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/TimedTextEx;->mKaraokeList:Ljava/util/List;

    move-object/from16 v19, v0

    .line 1716
    .local v19, object:Ljava/util/List;
    goto/16 :goto_7

    .line 1719
    .local v19, object:Ljava/lang/Object;
    :pswitch_b
    invoke-direct/range {p0 .. p1}, Lcom/lge/media/TimedTextEx;->readStyle(Landroid/os/Parcel;)V

    .line 1720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/TimedTextEx;->mStyleList:Ljava/util/List;

    move-object/from16 v19, v0

    .line 1721
    .local v19, object:Ljava/util/List;
    goto/16 :goto_7

    .line 1724
    .local v19, object:Ljava/lang/Object;
    :pswitch_c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 1725
    .local v23, top:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 1726
    .local v12, left:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1727
    .local v3, bottom:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1728
    .local v20, right:I
    new-instance v26, Landroid/graphics/Rect;

    move-object/from16 v0, v26

    move/from16 v1, v23

    move/from16 v2, v20

    invoke-direct {v0, v12, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/media/TimedTextEx;->mTextBounds:Landroid/graphics/Rect;

    .line 1729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/TimedTextEx;->mTextBounds:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    .line 1730
    .local v19, object:Landroid/graphics/Rect;
    goto/16 :goto_7

    .line 1734
    .end local v3           #bottom:I
    .end local v12           #left:I
    .end local v20           #right:I
    .end local v23           #top:I
    .local v19, object:Ljava/lang/Object;
    :pswitch_d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1735
    .local v6, horizontal:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 1736
    .local v25, vertical:I
    new-instance v26, Lcom/lge/media/TimedTextEx$Justification;

    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-direct {v0, v6, v1}, Lcom/lge/media/TimedTextEx$Justification;-><init>(II)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/media/TimedTextEx;->mJustification:Lcom/lge/media/TimedTextEx$Justification;

    .line 1738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/TimedTextEx;->mJustification:Lcom/lge/media/TimedTextEx$Justification;

    move-object/from16 v19, v0

    .line 1739
    .local v19, object:Lcom/lge/media/TimedTextEx$Justification;
    goto/16 :goto_7

    .line 1742
    .end local v6           #horizontal:I
    .end local v25           #vertical:I
    .local v19, object:Ljava/lang/Object;
    :pswitch_e
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/media/TimedTextEx;->mHeight:I

    .line 1743
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/media/TimedTextEx;->mHeight:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    .line 1744
    .local v19, object:Ljava/lang/Integer;
    goto/16 :goto_7

    .line 1747
    .local v19, object:Ljava/lang/Object;
    :pswitch_f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/media/TimedTextEx;->mWidth:I

    .line 1748
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/media/TimedTextEx;->mWidth:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    .line 1749
    .local v19, object:Ljava/lang/Integer;
    goto/16 :goto_7

    .line 1752
    .local v19, object:Ljava/lang/Object;
    :pswitch_10
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/media/TimedTextEx;->mDuration:I

    .line 1753
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/media/TimedTextEx;->mDuration:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    .line 1754
    .local v19, object:Ljava/lang/Integer;
    goto/16 :goto_7

    .line 1757
    .local v19, object:Ljava/lang/Object;
    :pswitch_11
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/media/TimedTextEx;->mStartOffset:I

    .line 1758
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/media/TimedTextEx;->mStartOffset:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    .line 1759
    .local v19, object:Ljava/lang/Integer;
    goto/16 :goto_7

    .line 1762
    .local v19, object:Ljava/lang/Object;
    :pswitch_12
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/media/TimedTextEx;->mSubAtom:I

    .line 1763
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/media/TimedTextEx;->mSubAtom:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    .line 1764
    .local v19, object:Ljava/lang/Integer;
    goto/16 :goto_7

    .line 1780
    .end local v9           #key:I
    .end local v19           #object:Ljava/lang/Integer;
    :cond_16
    const/16 v26, 0x1

    goto/16 :goto_0

    .line 1665
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method private readBlinkingText(Landroid/os/Parcel;)V
    .locals 4
    .parameter "parcel"

    .prologue
    .line 1930
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1931
    .local v2, startChar:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1932
    .local v1, endChar:I
    new-instance v0, Lcom/lge/media/TimedTextEx$CharPos;

    invoke-direct {v0, v2, v1}, Lcom/lge/media/TimedTextEx$CharPos;-><init>(II)V

    .line 1934
    .local v0, blinkingPos:Lcom/lge/media/TimedTextEx$CharPos;
    iget-object v3, p0, Lcom/lge/media/TimedTextEx;->mBlinkingPosList:Ljava/util/List;

    if-nez v3, :cond_0

    .line 1935
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/lge/media/TimedTextEx;->mBlinkingPosList:Ljava/util/List;

    .line 1937
    :cond_0
    iget-object v3, p0, Lcom/lge/media/TimedTextEx;->mBlinkingPosList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1938
    return-void
.end method

.method private readCommand(Landroid/os/Parcel;)Z
    .locals 7
    .parameter "parcel"

    .prologue
    const/4 v3, 0x1

    .line 1946
    const/4 v1, 0x0

    .line 1947
    .local v1, key:I
    const/4 v0, 0x0

    .line 1948
    .local v0, dataPosition:I
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v4

    if-lez v4, :cond_1

    .line 1949
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 1950
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1951
    invoke-direct {p0, v1}, Lcom/lge/media/TimedTextEx;->isValidKey(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1952
    const-string v3, "TimedTextEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readCommand / Invalid timed text ex key found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1953
    const/4 v3, 0x0

    .line 2134
    :cond_1
    :goto_1
    return v3

    .line 1955
    :cond_2
    const/16 v4, 0x1c

    if-ne v1, v4, :cond_3

    .line 1956
    const-string v4, "TimedTextEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readCommand / KEY_EX_MAX_SERVICE_NUM found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1957
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_1

    .line 1961
    :cond_3
    const/4 v2, 0x0

    .line 1963
    .local v2, object:Ljava/lang/Object;
    sparse-switch v1, :sswitch_data_0

    .line 2125
    .end local v2           #object:Ljava/lang/Object;
    :goto_2
    if-eqz v2, :cond_0

    .line 2126
    iget-object v4, p0, Lcom/lge/media/TimedTextEx;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2127
    iget-object v4, p0, Lcom/lge/media/TimedTextEx;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2130
    :cond_4
    iget-object v4, p0, Lcom/lge/media/TimedTextEx;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1965
    .restart local v2       #object:Ljava/lang/Object;
    :sswitch_0
    invoke-direct {p0}, Lcom/lge/media/TimedTextEx;->readCommand_EraseDisplayMemory()V

    .line 1966
    iget-object v2, p0, Lcom/lge/media/TimedTextEx;->mEraseDisMem:Ljava/util/ArrayList;

    .line 1967
    .local v2, object:Ljava/util/ArrayList;
    goto :goto_2

    .line 1970
    .local v2, object:Ljava/lang/Object;
    :sswitch_1
    invoke-direct {p0}, Lcom/lge/media/TimedTextEx;->readCommand_ResumeCaptionLoading()V

    .line 1971
    iget-object v2, p0, Lcom/lge/media/TimedTextEx;->mResumeCaption:Ljava/util/ArrayList;

    .line 1972
    .local v2, object:Ljava/util/ArrayList;
    goto :goto_2

    .line 1975
    .local v2, object:Ljava/lang/Object;
    :sswitch_2
    invoke-direct {p0}, Lcom/lge/media/TimedTextEx;->readCommand_EndOfCaption()V

    .line 1976
    iget-object v2, p0, Lcom/lge/media/TimedTextEx;->mEndofCaption:Ljava/util/ArrayList;

    .line 1977
    .local v2, object:Ljava/util/ArrayList;
    goto :goto_2

    .line 1980
    .local v2, object:Ljava/lang/Object;
    :sswitch_3
    invoke-direct {p0}, Lcom/lge/media/TimedTextEx;->readCommand_TapOffset1()V

    .line 1981
    iget-object v2, p0, Lcom/lge/media/TimedTextEx;->mTapOffset1:Ljava/util/ArrayList;

    .line 1982
    .local v2, object:Ljava/util/ArrayList;
    goto :goto_2

    .line 1985
    .local v2, object:Ljava/lang/Object;
    :sswitch_4
    invoke-direct {p0}, Lcom/lge/media/TimedTextEx;->readCommand_TapOffset2()V

    .line 1986
    iget-object v2, p0, Lcom/lge/media/TimedTextEx;->mTapOffset2:Ljava/util/ArrayList;

    .line 1987
    .local v2, object:Ljava/util/ArrayList;
    goto :goto_2

    .line 1990
    .local v2, object:Ljava/lang/Object;
    :sswitch_5
    invoke-direct {p0}, Lcom/lge/media/TimedTextEx;->readCommand_TapOffset3()V

    .line 1991
    iget-object v2, p0, Lcom/lge/media/TimedTextEx;->mTapOffset3:Ljava/util/ArrayList;

    .line 1992
    .local v2, object:Ljava/util/ArrayList;
    goto :goto_2

    .line 1995
    .local v2, object:Ljava/lang/Object;
    :sswitch_6
    invoke-direct {p0}, Lcom/lge/media/TimedTextEx;->readCommand_Rollup2()V

    .line 1996
    iget-object v2, p0, Lcom/lge/media/TimedTextEx;->mRollup2:Ljava/util/ArrayList;

    .line 1997
    .local v2, object:Ljava/util/ArrayList;
    goto :goto_2

    .line 2000
    .local v2, object:Ljava/lang/Object;
    :sswitch_7
    invoke-direct {p0}, Lcom/lge/media/TimedTextEx;->readCommand_Rollup3()V

    .line 2001
    iget-object v2, p0, Lcom/lge/media/TimedTextEx;->mRollup3:Ljava/util/ArrayList;

    .line 2002
    .local v2, object:Ljava/util/ArrayList;
    goto :goto_2

    .line 2005
    .local v2, object:Ljava/lang/Object;
    :sswitch_8
    invoke-direct {p0}, Lcom/lge/media/TimedTextEx;->readCommand_Rollup4()V

    .line 2006
    iget-object v2, p0, Lcom/lge/media/TimedTextEx;->mRollup4:Ljava/util/ArrayList;

    .line 2007
    .local v2, object:Ljava/util/ArrayList;
    goto :goto_2

    .line 2010
    .local v2, object:Ljava/lang/Object;
    :sswitch_9
    invoke-direct {p0}, Lcom/lge/media/TimedTextEx;->readCommand_CarriageReturn()V

    .line 2011
    iget-object v2, p0, Lcom/lge/media/TimedTextEx;->mCR:Ljava/util/ArrayList;

    .line 2012
    .local v2, object:Ljava/util/ArrayList;
    goto :goto_2

    .line 2015
    .local v2, object:Ljava/lang/Object;
    :sswitch_a
    invoke-direct {p0}, Lcom/lge/media/TimedTextEx;->readCommand_EraseNondisplayMemory()V

    .line 2016
    iget-object v2, p0, Lcom/lge/media/TimedTextEx;->mEraseNonDisMem:Ljava/util/ArrayList;

    .line 2017
    .local v2, object:Ljava/util/ArrayList;
    goto :goto_2

    .line 2020
    .local v2, object:Ljava/lang/Object;
    :sswitch_b
    invoke-direct {p0}, Lcom/lge/media/TimedTextEx;->readCommand_Backspace()V

    .line 2021
    iget-object v2, p0, Lcom/lge/media/TimedTextEx;->mBackspace:Ljava/util/ArrayList;

    .line 2022
    .local v2, object:Ljava/util/ArrayList;
    goto :goto_2

    .line 2025
    .local v2, object:Ljava/lang/Object;
    :sswitch_c
    invoke-direct {p0}, Lcom/lge/media/TimedTextEx;->readCommand_ResumeTextDisplay()V

    .line 2026
    iget-object v2, p0, Lcom/lge/media/TimedTextEx;->mResumeTextDis:Ljava/util/ArrayList;

    .line 2027
    .local v2, object:Ljava/util/ArrayList;
    goto :goto_2

    .line 2030
    .local v2, object:Ljava/lang/Object;
    :sswitch_d
    invoke-direct {p0, p1}, Lcom/lge/media/TimedTextEx;->readCommand_PreambleAdressCode(Landroid/os/Parcel;)V

    .line 2031
    iget-object v2, p0, Lcom/lge/media/TimedTextEx;->mPreambleAdressCode:Ljava/util/ArrayList;

    .line 2032
    .local v2, object:Ljava/util/ArrayList;
    goto :goto_2

    .line 2035
    .local v2, object:Ljava/lang/Object;
    :sswitch_e
    invoke-direct {p0, p1}, Lcom/lge/media/TimedTextEx;->readCommand_TextAttribute(Landroid/os/Parcel;)V

    .line 2036
    iget-object v2, p0, Lcom/lge/media/TimedTextEx;->mTextAttribute:Ljava/util/ArrayList;

    .line 2037
    .local v2, object:Ljava/util/ArrayList;
    goto :goto_2

    .line 2040
    .local v2, object:Ljava/lang/Object;
    :sswitch_f
    invoke-direct {p0, p1}, Lcom/lge/media/TimedTextEx;->readCommand_SetCurrentWindow(Landroid/os/Parcel;)V

    .line 2041
    iget-object v2, p0, Lcom/lge/media/TimedTextEx;->mSetCurWin:Ljava/util/ArrayList;

    .line 2042
    .local v2, object:Ljava/util/ArrayList;
    goto :goto_2

    .line 2045
    .local v2, object:Ljava/lang/Object;
    :sswitch_10
    invoke-direct {p0, p1}, Lcom/lge/media/TimedTextEx;->readCommand_ClearWindows(Landroid/os/Parcel;)V

    .line 2046
    iget-object v2, p0, Lcom/lge/media/TimedTextEx;->mClearWins:Ljava/util/ArrayList;

    .line 2047
    .local v2, object:Ljava/util/ArrayList;
    goto/16 :goto_2

    .line 2050
    .local v2, object:Ljava/lang/Object;
    :sswitch_11
    invoke-direct {p0, p1}, Lcom/lge/media/TimedTextEx;->readCommand_DefineWindow(Landroid/os/Parcel;)V

    .line 2051
    iget-object v2, p0, Lcom/lge/media/TimedTextEx;->mDefineWin:Ljava/util/ArrayList;

    .line 2052
    .local v2, object:Ljava/util/ArrayList;
    goto/16 :goto_2

    .line 2055
    .local v2, object:Ljava/lang/Object;
    :sswitch_12
    invoke-direct {p0, p1}, Lcom/lge/media/TimedTextEx;->readCommand_DeleteWindows(Landroid/os/Parcel;)V

    .line 2056
    iget-object v2, p0, Lcom/lge/media/TimedTextEx;->mDelWins:Ljava/util/ArrayList;

    .line 2057
    .local v2, object:Ljava/util/ArrayList;
    goto/16 :goto_2

    .line 2060
    .local v2, object:Ljava/lang/Object;
    :sswitch_13
    invoke-direct {p0, p1}, Lcom/lge/media/TimedTextEx;->readCommand_DisplayWindows(Landroid/os/Parcel;)V

    .line 2061
    iget-object v2, p0, Lcom/lge/media/TimedTextEx;->mDisplayWins:Ljava/util/ArrayList;

    .line 2062
    .local v2, object:Ljava/util/ArrayList;
    goto/16 :goto_2

    .line 2065
    .local v2, object:Ljava/lang/Object;
    :sswitch_14
    invoke-direct {p0, p1}, Lcom/lge/media/TimedTextEx;->readCommand_HideWindows(Landroid/os/Parcel;)V

    .line 2066
    iget-object v2, p0, Lcom/lge/media/TimedTextEx;->mHideWins:Ljava/util/ArrayList;

    .line 2067
    .local v2, object:Ljava/util/ArrayList;
    goto/16 :goto_2

    .line 2070
    .local v2, object:Ljava/lang/Object;
    :sswitch_15
    invoke-direct {p0, p1}, Lcom/lge/media/TimedTextEx;->readCommand_ToggleWindows(Landroid/os/Parcel;)V

    .line 2071
    iget-object v2, p0, Lcom/lge/media/TimedTextEx;->mToggleWins:Ljava/util/ArrayList;

    .line 2072
    .local v2, object:Ljava/util/ArrayList;
    goto/16 :goto_2

    .line 2076
    .local v2, object:Ljava/lang/Object;
    :sswitch_16
    invoke-direct {p0, p1}, Lcom/lge/media/TimedTextEx;->readCommand_SetWindowAttribute(Landroid/os/Parcel;)V

    .line 2077
    iget-object v2, p0, Lcom/lge/media/TimedTextEx;->mSetWinAttribute:Ljava/util/ArrayList;

    .line 2078
    .local v2, object:Ljava/util/ArrayList;
    goto/16 :goto_2

    .line 2081
    .local v2, object:Ljava/lang/Object;
    :sswitch_17
    invoke-direct {p0, p1}, Lcom/lge/media/TimedTextEx;->readCommand_SetPenAttribute(Landroid/os/Parcel;)V

    .line 2082
    iget-object v2, p0, Lcom/lge/media/TimedTextEx;->mSetPenAttribute:Ljava/util/ArrayList;

    .line 2083
    .local v2, object:Ljava/util/ArrayList;
    goto/16 :goto_2

    .line 2086
    .local v2, object:Ljava/lang/Object;
    :sswitch_18
    invoke-direct {p0, p1}, Lcom/lge/media/TimedTextEx;->readCommand_SetPenColor(Landroid/os/Parcel;)V

    .line 2087
    iget-object v2, p0, Lcom/lge/media/TimedTextEx;->mSetPenColor:Ljava/util/ArrayList;

    .line 2088
    .local v2, object:Ljava/util/ArrayList;
    goto/16 :goto_2

    .line 2091
    .local v2, object:Ljava/lang/Object;
    :sswitch_19
    invoke-direct {p0, p1}, Lcom/lge/media/TimedTextEx;->readCommand_SetPenLocation(Landroid/os/Parcel;)V

    .line 2092
    iget-object v2, p0, Lcom/lge/media/TimedTextEx;->mSetPenLocation:Ljava/util/ArrayList;

    .line 2093
    .local v2, object:Ljava/util/ArrayList;
    goto/16 :goto_2

    .line 2096
    .local v2, object:Ljava/lang/Object;
    :sswitch_1a
    invoke-direct {p0, p1}, Lcom/lge/media/TimedTextEx;->readCommand_Delay(Landroid/os/Parcel;)V

    .line 2097
    iget-object v2, p0, Lcom/lge/media/TimedTextEx;->mDelay:Ljava/util/ArrayList;

    .line 2098
    .local v2, object:Ljava/util/ArrayList;
    goto/16 :goto_2

    .line 2101
    .local v2, object:Ljava/lang/Object;
    :sswitch_1b
    invoke-direct {p0}, Lcom/lge/media/TimedTextEx;->readCommand_DelayCancel()V

    .line 2102
    iget-object v2, p0, Lcom/lge/media/TimedTextEx;->mDelayCancel:Ljava/util/ArrayList;

    .line 2103
    .local v2, object:Ljava/util/ArrayList;
    goto/16 :goto_2

    .line 2106
    .local v2, object:Ljava/lang/Object;
    :sswitch_1c
    invoke-direct {p0}, Lcom/lge/media/TimedTextEx;->readCommand_Reset()V

    .line 2107
    iget-object v2, p0, Lcom/lge/media/TimedTextEx;->mReset:Ljava/util/ArrayList;

    .line 2108
    .local v2, object:Ljava/util/ArrayList;
    goto/16 :goto_2

    .line 2111
    .local v2, object:Ljava/lang/Object;
    :sswitch_1d
    invoke-direct {p0}, Lcom/lge/media/TimedTextEx;->readCommand_HorizontalCarriageReturn()V

    .line 2112
    iget-object v2, p0, Lcom/lge/media/TimedTextEx;->mHorizontalCarriageReturn:Ljava/util/ArrayList;

    .line 2113
    .local v2, object:Ljava/util/ArrayList;
    goto/16 :goto_2

    .line 2116
    .local v2, object:Ljava/lang/Object;
    :sswitch_1e
    invoke-direct {p0}, Lcom/lge/media/TimedTextEx;->readCommand_FormFeed()V

    .line 2117
    iget-object v2, p0, Lcom/lge/media/TimedTextEx;->mFormFeed:Ljava/util/ArrayList;

    .line 2118
    .local v2, object:Ljava/util/ArrayList;
    goto/16 :goto_2

    .line 1963
    nop

    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_0
        0x66 -> :sswitch_1
        0x67 -> :sswitch_2
        0x68 -> :sswitch_3
        0x69 -> :sswitch_4
        0x6a -> :sswitch_5
        0x6b -> :sswitch_6
        0x6c -> :sswitch_7
        0x6d -> :sswitch_8
        0x6e -> :sswitch_9
        0x6f -> :sswitch_a
        0x70 -> :sswitch_b
        0x71 -> :sswitch_c
        0x72 -> :sswitch_d
        0x73 -> :sswitch_e
        0xc9 -> :sswitch_f
        0xca -> :sswitch_10
        0xcb -> :sswitch_11
        0xcc -> :sswitch_12
        0xcd -> :sswitch_13
        0xce -> :sswitch_14
        0xcf -> :sswitch_15
        0xd0 -> :sswitch_16
        0xd3 -> :sswitch_17
        0xd4 -> :sswitch_18
        0xd5 -> :sswitch_19
        0xdd -> :sswitch_1a
        0xde -> :sswitch_1b
        0xdf -> :sswitch_1c
        0xe7 -> :sswitch_1d
        0xe8 -> :sswitch_1e
    .end sparse-switch
.end method

.method private readCommand_Backspace()V
    .locals 4

    .prologue
    .line 2516
    const-string v2, "TimedTextEx"

    const-string v3, "readCommand_Backspace"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2518
    const/4 v1, 0x1

    .line 2519
    .local v1, backspace:I
    new-instance v0, Lcom/lge/media/TimedTextEx$Backspace;

    invoke-direct {v0, v1}, Lcom/lge/media/TimedTextEx$Backspace;-><init>(I)V

    .line 2520
    .local v0, backSpace:Lcom/lge/media/TimedTextEx$Backspace;
    iget-object v2, p0, Lcom/lge/media/TimedTextEx;->mBackspace:Ljava/util/ArrayList;

    iget v3, p0, Lcom/lge/media/TimedTextEx;->mIndex:I

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2521
    return-void
.end method

.method private readCommand_CarriageReturn()V
    .locals 4

    .prologue
    .line 2494
    const-string v2, "TimedTextEx"

    const-string v3, "readCommand_CarriageReturn"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2496
    const/4 v1, 0x1

    .line 2497
    .local v1, cr:I
    new-instance v0, Lcom/lge/media/TimedTextEx$CarriageReturn;

    invoke-direct {v0, v1}, Lcom/lge/media/TimedTextEx$CarriageReturn;-><init>(I)V

    .line 2498
    .local v0, CR:Lcom/lge/media/TimedTextEx$CarriageReturn;
    iget-object v2, p0, Lcom/lge/media/TimedTextEx;->mCR:Ljava/util/ArrayList;

    iget v3, p0, Lcom/lge/media/TimedTextEx;->mIndex:I

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2499
    return-void
.end method

.method private readCommand_ClearWindows(Landroid/os/Parcel;)V
    .locals 4
    .parameter "parcel"

    .prologue
    .line 2579
    const-string v2, "TimedTextEx"

    const-string v3, "readCommand_ClearWindows"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2581
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2582
    .local v1, windowMap:I
    new-instance v0, Lcom/lge/media/TimedTextEx$ClearWindows;

    invoke-direct {v0, v1}, Lcom/lge/media/TimedTextEx$ClearWindows;-><init>(I)V

    .line 2583
    .local v0, clearWins:Lcom/lge/media/TimedTextEx$ClearWindows;
    iget-object v2, p0, Lcom/lge/media/TimedTextEx;->mClearWins:Ljava/util/ArrayList;

    iget v3, p0, Lcom/lge/media/TimedTextEx;->mIndex:I

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2584
    return-void
.end method

.method private readCommand_DefineWindow(Landroid/os/Parcel;)V
    .locals 17
    .parameter "parcel"

    .prologue
    .line 2590
    const-string v15, "TimedTextEx"

    const-string v16, "readCommand_DefineWindow"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2592
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2593
    .local v2, windowID:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2594
    .local v3, priority:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2595
    .local v4, anchorPoint:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2596
    .local v5, relativePosition:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2597
    .local v6, anchorVertical:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2598
    .local v7, anchorHorizontal:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2599
    .local v8, rowCount:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 2600
    .local v9, columnCount:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 2601
    .local v10, rowLock:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 2602
    .local v11, columnLock:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 2603
    .local v12, visible:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 2604
    .local v13, windowStyleID:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 2606
    .local v14, penStyleID:I
    new-instance v1, Lcom/lge/media/TimedTextEx$DefineWindow;

    invoke-direct/range {v1 .. v14}, Lcom/lge/media/TimedTextEx$DefineWindow;-><init>(IIIIIIIIIIIII)V

    .line 2609
    .local v1, defineWin:Lcom/lge/media/TimedTextEx$DefineWindow;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/media/TimedTextEx;->mDefineWin:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/media/TimedTextEx;->mIndex:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v15, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2610
    return-void
.end method

.method private readCommand_Delay(Landroid/os/Parcel;)V
    .locals 4
    .parameter "parcel"

    .prologue
    .line 2734
    const-string v2, "TimedTextEx"

    const-string v3, "readCommand_Delay"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2736
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2737
    .local v1, delay:I
    new-instance v0, Lcom/lge/media/TimedTextEx$Delay;

    invoke-direct {v0, v1}, Lcom/lge/media/TimedTextEx$Delay;-><init>(I)V

    .line 2738
    .local v0, d:Lcom/lge/media/TimedTextEx$Delay;
    iget-object v2, p0, Lcom/lge/media/TimedTextEx;->mDelay:Ljava/util/ArrayList;

    iget v3, p0, Lcom/lge/media/TimedTextEx;->mIndex:I

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2739
    return-void
.end method

.method private readCommand_DelayCancel()V
    .locals 4

    .prologue
    .line 2745
    const-string v2, "TimedTextEx"

    const-string v3, "readCommand_DelayCancel"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2747
    const/4 v1, 0x1

    .line 2748
    .local v1, delayCancel:I
    new-instance v0, Lcom/lge/media/TimedTextEx$DelayCancel;

    invoke-direct {v0, v1}, Lcom/lge/media/TimedTextEx$DelayCancel;-><init>(I)V

    .line 2749
    .local v0, cancel:Lcom/lge/media/TimedTextEx$DelayCancel;
    iget-object v2, p0, Lcom/lge/media/TimedTextEx;->mDelayCancel:Ljava/util/ArrayList;

    iget v3, p0, Lcom/lge/media/TimedTextEx;->mIndex:I

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2750
    return-void
.end method

.method private readCommand_DeleteWindows(Landroid/os/Parcel;)V
    .locals 4
    .parameter "parcel"

    .prologue
    .line 2616
    const-string v2, "TimedTextEx"

    const-string v3, "readCommand_DeleteWindows"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2618
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2619
    .local v1, windowMap:I
    new-instance v0, Lcom/lge/media/TimedTextEx$DeleteWindows;

    invoke-direct {v0, v1}, Lcom/lge/media/TimedTextEx$DeleteWindows;-><init>(I)V

    .line 2620
    .local v0, delWins:Lcom/lge/media/TimedTextEx$DeleteWindows;
    iget-object v2, p0, Lcom/lge/media/TimedTextEx;->mDelWins:Ljava/util/ArrayList;

    iget v3, p0, Lcom/lge/media/TimedTextEx;->mIndex:I

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2621
    return-void
.end method

.method private readCommand_DisplayWindows(Landroid/os/Parcel;)V
    .locals 4
    .parameter "parcel"

    .prologue
    .line 2627
    const-string v2, "TimedTextEx"

    const-string v3, "readCommand_DisplayWindows"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2629
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2630
    .local v1, windowMap:I
    new-instance v0, Lcom/lge/media/TimedTextEx$DisplayWindows;

    invoke-direct {v0, v1}, Lcom/lge/media/TimedTextEx$DisplayWindows;-><init>(I)V

    .line 2631
    .local v0, displayWins:Lcom/lge/media/TimedTextEx$DisplayWindows;
    iget-object v2, p0, Lcom/lge/media/TimedTextEx;->mDisplayWins:Ljava/util/ArrayList;

    iget v3, p0, Lcom/lge/media/TimedTextEx;->mIndex:I

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2632
    return-void
.end method

.method private readCommand_EndOfCaption()V
    .locals 4

    .prologue
    .line 2417
    const-string v2, "TimedTextEx"

    const-string v3, "readCommand_EndOfCaption"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2419
    const/4 v0, 0x1

    .line 2420
    .local v0, end:I
    new-instance v1, Lcom/lge/media/TimedTextEx$EndOfCaption;

    invoke-direct {v1, v0}, Lcom/lge/media/TimedTextEx$EndOfCaption;-><init>(I)V

    .line 2421
    .local v1, endofCaption:Lcom/lge/media/TimedTextEx$EndOfCaption;
    iget-object v2, p0, Lcom/lge/media/TimedTextEx;->mEndofCaption:Ljava/util/ArrayList;

    iget v3, p0, Lcom/lge/media/TimedTextEx;->mIndex:I

    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2422
    return-void
.end method

.method private readCommand_EraseDisplayMemory()V
    .locals 4

    .prologue
    .line 2395
    const-string v2, "TimedTextEx"

    const-string v3, "readCommand_EraseDisplayMemory"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2397
    const/4 v0, 0x1

    .line 2398
    .local v0, erase:I
    new-instance v1, Lcom/lge/media/TimedTextEx$EraseDisplayMemory;

    invoke-direct {v1, v0}, Lcom/lge/media/TimedTextEx$EraseDisplayMemory;-><init>(I)V

    .line 2399
    .local v1, eraseDisMem:Lcom/lge/media/TimedTextEx$EraseDisplayMemory;
    iget-object v2, p0, Lcom/lge/media/TimedTextEx;->mEraseDisMem:Ljava/util/ArrayList;

    iget v3, p0, Lcom/lge/media/TimedTextEx;->mIndex:I

    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2400
    return-void
.end method

.method private readCommand_EraseNondisplayMemory()V
    .locals 4

    .prologue
    .line 2505
    const-string v2, "TimedTextEx"

    const-string v3, "readCommand_EraseNondisplayMemory"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2507
    const/4 v0, 0x1

    .line 2508
    .local v0, erase:I
    new-instance v1, Lcom/lge/media/TimedTextEx$EraseNondisplayMemory;

    invoke-direct {v1, v0}, Lcom/lge/media/TimedTextEx$EraseNondisplayMemory;-><init>(I)V

    .line 2509
    .local v1, eraseNonDisMem:Lcom/lge/media/TimedTextEx$EraseNondisplayMemory;
    iget-object v2, p0, Lcom/lge/media/TimedTextEx;->mEraseNonDisMem:Ljava/util/ArrayList;

    iget v3, p0, Lcom/lge/media/TimedTextEx;->mIndex:I

    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2510
    return-void
.end method

.method private readCommand_FormFeed()V
    .locals 4

    .prologue
    .line 2778
    const-string v2, "TimedTextEx"

    const-string v3, "readCommand_FormFeed"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2780
    const/4 v1, 0x1

    .line 2781
    .local v1, formFeed:I
    new-instance v0, Lcom/lge/media/TimedTextEx$FormFeed;

    invoke-direct {v0, v1}, Lcom/lge/media/TimedTextEx$FormFeed;-><init>(I)V

    .line 2782
    .local v0, FF:Lcom/lge/media/TimedTextEx$FormFeed;
    iget-object v2, p0, Lcom/lge/media/TimedTextEx;->mFormFeed:Ljava/util/ArrayList;

    iget v3, p0, Lcom/lge/media/TimedTextEx;->mIndex:I

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2783
    return-void
.end method

.method private readCommand_HideWindows(Landroid/os/Parcel;)V
    .locals 4
    .parameter "parcel"

    .prologue
    .line 2638
    const-string v2, "TimedTextEx"

    const-string v3, "readCommand_HideWindows"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2640
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2641
    .local v1, windowMap:I
    new-instance v0, Lcom/lge/media/TimedTextEx$HideWindows;

    invoke-direct {v0, v1}, Lcom/lge/media/TimedTextEx$HideWindows;-><init>(I)V

    .line 2642
    .local v0, hideWins:Lcom/lge/media/TimedTextEx$HideWindows;
    iget-object v2, p0, Lcom/lge/media/TimedTextEx;->mHideWins:Ljava/util/ArrayList;

    iget v3, p0, Lcom/lge/media/TimedTextEx;->mIndex:I

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2643
    return-void
.end method

.method private readCommand_HorizontalCarriageReturn()V
    .locals 4

    .prologue
    .line 2767
    const-string v2, "TimedTextEx"

    const-string v3, "readCommand_HorizontalCarriageReturn"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2769
    const/4 v0, 0x1

    .line 2770
    .local v0, hcr:I
    new-instance v1, Lcom/lge/media/TimedTextEx$HorizontalCarriageReturn;

    invoke-direct {v1, v0}, Lcom/lge/media/TimedTextEx$HorizontalCarriageReturn;-><init>(I)V

    .line 2771
    .local v1, horizontalCarriageReturn:Lcom/lge/media/TimedTextEx$HorizontalCarriageReturn;
    iget-object v2, p0, Lcom/lge/media/TimedTextEx;->mHorizontalCarriageReturn:Ljava/util/ArrayList;

    iget v3, p0, Lcom/lge/media/TimedTextEx;->mIndex:I

    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2772
    return-void
.end method

.method private readCommand_PreambleAdressCode(Landroid/os/Parcel;)V
    .locals 7
    .parameter "parcel"

    .prologue
    .line 2537
    const-string v5, "TimedTextEx"

    const-string v6, "readCommand_PreambleAdressCode"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2539
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2540
    .local v4, row:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2541
    .local v0, color:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2542
    .local v1, font:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2544
    .local v2, indent:I
    new-instance v3, Lcom/lge/media/TimedTextEx$PreambleAdressCode;

    invoke-direct {v3, v4, v0, v1, v2}, Lcom/lge/media/TimedTextEx$PreambleAdressCode;-><init>(IIII)V

    .line 2546
    .local v3, preambleAdressCode:Lcom/lge/media/TimedTextEx$PreambleAdressCode;
    iget-object v5, p0, Lcom/lge/media/TimedTextEx;->mPreambleAdressCode:Ljava/util/ArrayList;

    iget v6, p0, Lcom/lge/media/TimedTextEx;->mIndex:I

    invoke-virtual {v5, v6, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2547
    return-void
.end method

.method private readCommand_Reset()V
    .locals 4

    .prologue
    .line 2756
    const-string v2, "TimedTextEx"

    const-string v3, "readCommand_Reset"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2758
    const/4 v1, 0x1

    .line 2759
    .local v1, reset:I
    new-instance v0, Lcom/lge/media/TimedTextEx$Reset;

    invoke-direct {v0, v1}, Lcom/lge/media/TimedTextEx$Reset;-><init>(I)V

    .line 2760
    .local v0, r:Lcom/lge/media/TimedTextEx$Reset;
    iget-object v2, p0, Lcom/lge/media/TimedTextEx;->mReset:Ljava/util/ArrayList;

    iget v3, p0, Lcom/lge/media/TimedTextEx;->mIndex:I

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2761
    return-void
.end method

.method private readCommand_ResumeCaptionLoading()V
    .locals 4

    .prologue
    .line 2406
    const-string v2, "TimedTextEx"

    const-string v3, "readCommand_ResumeCaptionLoading"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2408
    const/4 v0, 0x1

    .line 2409
    .local v0, resume:I
    new-instance v1, Lcom/lge/media/TimedTextEx$ResumeCaptionLoading;

    invoke-direct {v1, v0}, Lcom/lge/media/TimedTextEx$ResumeCaptionLoading;-><init>(I)V

    .line 2410
    .local v1, resumeCaption:Lcom/lge/media/TimedTextEx$ResumeCaptionLoading;
    iget-object v2, p0, Lcom/lge/media/TimedTextEx;->mResumeCaption:Ljava/util/ArrayList;

    iget v3, p0, Lcom/lge/media/TimedTextEx;->mIndex:I

    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2411
    return-void
.end method

.method private readCommand_ResumeTextDisplay()V
    .locals 4

    .prologue
    .line 2526
    const-string v2, "TimedTextEx"

    const-string v3, "readCommand_ResumeTextDisplay"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2528
    const/4 v0, 0x1

    .line 2529
    .local v0, resume:I
    new-instance v1, Lcom/lge/media/TimedTextEx$ResumeTextDisplay;

    invoke-direct {v1, v0}, Lcom/lge/media/TimedTextEx$ResumeTextDisplay;-><init>(I)V

    .line 2530
    .local v1, resumeTextDis:Lcom/lge/media/TimedTextEx$ResumeTextDisplay;
    iget-object v2, p0, Lcom/lge/media/TimedTextEx;->mResumeTextDis:Ljava/util/ArrayList;

    iget v3, p0, Lcom/lge/media/TimedTextEx;->mIndex:I

    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2531
    return-void
.end method

.method private readCommand_Rollup2()V
    .locals 4

    .prologue
    .line 2461
    const-string v2, "TimedTextEx"

    const-string v3, "readCommand_Rollup2"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2463
    const/4 v0, 0x1

    .line 2464
    .local v0, rollup:I
    new-instance v1, Lcom/lge/media/TimedTextEx$Rollup2;

    invoke-direct {v1, v0}, Lcom/lge/media/TimedTextEx$Rollup2;-><init>(I)V

    .line 2465
    .local v1, rollup2:Lcom/lge/media/TimedTextEx$Rollup2;
    iget-object v2, p0, Lcom/lge/media/TimedTextEx;->mRollup2:Ljava/util/ArrayList;

    iget v3, p0, Lcom/lge/media/TimedTextEx;->mIndex:I

    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2466
    return-void
.end method

.method private readCommand_Rollup3()V
    .locals 4

    .prologue
    .line 2472
    const-string v2, "TimedTextEx"

    const-string v3, "readCommand_Rollup3"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2474
    const/4 v0, 0x1

    .line 2475
    .local v0, rollup:I
    new-instance v1, Lcom/lge/media/TimedTextEx$Rollup3;

    invoke-direct {v1, v0}, Lcom/lge/media/TimedTextEx$Rollup3;-><init>(I)V

    .line 2476
    .local v1, rollup3:Lcom/lge/media/TimedTextEx$Rollup3;
    iget-object v2, p0, Lcom/lge/media/TimedTextEx;->mRollup3:Ljava/util/ArrayList;

    iget v3, p0, Lcom/lge/media/TimedTextEx;->mIndex:I

    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2477
    return-void
.end method

.method private readCommand_Rollup4()V
    .locals 4

    .prologue
    .line 2483
    const-string v2, "TimedTextEx"

    const-string v3, "readCommand_Rollup4"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2485
    const/4 v0, 0x1

    .line 2486
    .local v0, rollup:I
    new-instance v1, Lcom/lge/media/TimedTextEx$Rollup4;

    invoke-direct {v1, v0}, Lcom/lge/media/TimedTextEx$Rollup4;-><init>(I)V

    .line 2487
    .local v1, rollup4:Lcom/lge/media/TimedTextEx$Rollup4;
    iget-object v2, p0, Lcom/lge/media/TimedTextEx;->mRollup4:Ljava/util/ArrayList;

    iget v3, p0, Lcom/lge/media/TimedTextEx;->mIndex:I

    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2488
    return-void
.end method

.method private readCommand_SetCurrentWindow(Landroid/os/Parcel;)V
    .locals 4
    .parameter "parcel"

    .prologue
    .line 2568
    const-string v2, "TimedTextEx"

    const-string v3, "readCommand_SetCurrentWindow"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2570
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2571
    .local v1, windowID:I
    new-instance v0, Lcom/lge/media/TimedTextEx$SetCurrentWindow;

    invoke-direct {v0, v1}, Lcom/lge/media/TimedTextEx$SetCurrentWindow;-><init>(I)V

    .line 2572
    .local v0, setCurWin:Lcom/lge/media/TimedTextEx$SetCurrentWindow;
    iget-object v2, p0, Lcom/lge/media/TimedTextEx;->mSetCurWin:Ljava/util/ArrayList;

    iget v3, p0, Lcom/lge/media/TimedTextEx;->mIndex:I

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2573
    return-void
.end method

.method private readCommand_SetPenAttribute(Landroid/os/Parcel;)V
    .locals 10
    .parameter "parcel"

    .prologue
    .line 2684
    const-string v8, "TimedTextEx"

    const-string v9, "readCommand_SetPenAttribute"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2686
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2687
    .local v1, penSize:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2688
    .local v2, font:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2689
    .local v3, textTag:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2690
    .local v4, offSet:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2691
    .local v5, italics:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2692
    .local v6, underline:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2694
    .local v7, edgeType:I
    new-instance v0, Lcom/lge/media/TimedTextEx$SetPenAttribute;

    invoke-direct/range {v0 .. v7}, Lcom/lge/media/TimedTextEx$SetPenAttribute;-><init>(IIIIIII)V

    .line 2696
    .local v0, setPenAttribute:Lcom/lge/media/TimedTextEx$SetPenAttribute;
    iget-object v8, p0, Lcom/lge/media/TimedTextEx;->mSetPenAttribute:Ljava/util/ArrayList;

    iget v9, p0, Lcom/lge/media/TimedTextEx;->mIndex:I

    invoke-virtual {v8, v9, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2697
    return-void
.end method

.method private readCommand_SetPenColor(Landroid/os/Parcel;)V
    .locals 8
    .parameter "parcel"

    .prologue
    .line 2703
    const-string v6, "TimedTextEx"

    const-string v7, "readCommand_SetPenColor"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2705
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2706
    .local v1, fgColor:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2707
    .local v2, fgOpacity:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2708
    .local v3, bgColor:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2709
    .local v4, bgOpacity:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2711
    .local v5, egdeColor:I
    new-instance v0, Lcom/lge/media/TimedTextEx$SetPenColor;

    invoke-direct/range {v0 .. v5}, Lcom/lge/media/TimedTextEx$SetPenColor;-><init>(IIIII)V

    .line 2713
    .local v0, setPenColor:Lcom/lge/media/TimedTextEx$SetPenColor;
    iget-object v6, p0, Lcom/lge/media/TimedTextEx;->mSetPenColor:Ljava/util/ArrayList;

    iget v7, p0, Lcom/lge/media/TimedTextEx;->mIndex:I

    invoke-virtual {v6, v7, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2714
    return-void
.end method

.method private readCommand_SetPenLocation(Landroid/os/Parcel;)V
    .locals 5
    .parameter "parcel"

    .prologue
    .line 2720
    const-string v3, "TimedTextEx"

    const-string v4, "readCommand_SetPenLocation"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2722
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2723
    .local v1, row:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2725
    .local v0, column:I
    new-instance v2, Lcom/lge/media/TimedTextEx$SetPenLocation;

    invoke-direct {v2, v1, v0}, Lcom/lge/media/TimedTextEx$SetPenLocation;-><init>(II)V

    .line 2727
    .local v2, setPenLocation:Lcom/lge/media/TimedTextEx$SetPenLocation;
    iget-object v3, p0, Lcom/lge/media/TimedTextEx;->mSetPenLocation:Ljava/util/ArrayList;

    iget v4, p0, Lcom/lge/media/TimedTextEx;->mIndex:I

    invoke-virtual {v3, v4, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2728
    return-void
.end method

.method private readCommand_SetWindowAttribute(Landroid/os/Parcel;)V
    .locals 14
    .parameter "parcel"

    .prologue
    .line 2660
    const-string v12, "TimedTextEx"

    const-string v13, "readCommand_SetWindowAttribute"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2662
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2663
    .local v1, justify:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2664
    .local v2, printDirection:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2665
    .local v3, scrollDirection:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2666
    .local v4, wordRap:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2667
    .local v5, displayEffect:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2668
    .local v6, effectDirection:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2669
    .local v7, effectSpeed:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2670
    .local v8, fillColor:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 2671
    .local v9, fillOpacity:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 2672
    .local v10, borderType:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 2674
    .local v11, borderColor:I
    new-instance v0, Lcom/lge/media/TimedTextEx$SetWindowAttribute;

    invoke-direct/range {v0 .. v11}, Lcom/lge/media/TimedTextEx$SetWindowAttribute;-><init>(IIIIIIIIIII)V

    .line 2677
    .local v0, setWinAttribute:Lcom/lge/media/TimedTextEx$SetWindowAttribute;
    iget-object v12, p0, Lcom/lge/media/TimedTextEx;->mSetWinAttribute:Ljava/util/ArrayList;

    iget v13, p0, Lcom/lge/media/TimedTextEx;->mIndex:I

    invoke-virtual {v12, v13, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2678
    return-void
.end method

.method private readCommand_TapOffset1()V
    .locals 4

    .prologue
    .line 2428
    const-string v2, "TimedTextEx"

    const-string v3, "readCommand_TapOffset1"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2430
    const/4 v1, 0x1

    .line 2431
    .local v1, tapoffset:I
    new-instance v0, Lcom/lge/media/TimedTextEx$TapOffset1;

    invoke-direct {v0, v1}, Lcom/lge/media/TimedTextEx$TapOffset1;-><init>(I)V

    .line 2432
    .local v0, tapOffset1:Lcom/lge/media/TimedTextEx$TapOffset1;
    iget-object v2, p0, Lcom/lge/media/TimedTextEx;->mTapOffset1:Ljava/util/ArrayList;

    iget v3, p0, Lcom/lge/media/TimedTextEx;->mIndex:I

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2433
    return-void
.end method

.method private readCommand_TapOffset2()V
    .locals 4

    .prologue
    .line 2439
    const-string v2, "TimedTextEx"

    const-string v3, "readCommand_TapOffset2"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2441
    const/4 v1, 0x1

    .line 2442
    .local v1, tapoffset:I
    new-instance v0, Lcom/lge/media/TimedTextEx$TapOffset2;

    invoke-direct {v0, v1}, Lcom/lge/media/TimedTextEx$TapOffset2;-><init>(I)V

    .line 2443
    .local v0, tapOffset2:Lcom/lge/media/TimedTextEx$TapOffset2;
    iget-object v2, p0, Lcom/lge/media/TimedTextEx;->mTapOffset2:Ljava/util/ArrayList;

    iget v3, p0, Lcom/lge/media/TimedTextEx;->mIndex:I

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2444
    return-void
.end method

.method private readCommand_TapOffset3()V
    .locals 4

    .prologue
    .line 2450
    const-string v2, "TimedTextEx"

    const-string v3, "readCommand_TapOffset3"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2452
    const/4 v1, 0x1

    .line 2453
    .local v1, tapoffset:I
    new-instance v0, Lcom/lge/media/TimedTextEx$TapOffset3;

    invoke-direct {v0, v1}, Lcom/lge/media/TimedTextEx$TapOffset3;-><init>(I)V

    .line 2454
    .local v0, tapOffset3:Lcom/lge/media/TimedTextEx$TapOffset3;
    iget-object v2, p0, Lcom/lge/media/TimedTextEx;->mTapOffset3:Ljava/util/ArrayList;

    iget v3, p0, Lcom/lge/media/TimedTextEx;->mIndex:I

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2455
    return-void
.end method

.method private readCommand_TextAttribute(Landroid/os/Parcel;)V
    .locals 5
    .parameter "parcel"

    .prologue
    .line 2553
    const-string v3, "TimedTextEx"

    const-string v4, "readCommand_TextAttribute"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2555
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2556
    .local v0, color:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2558
    .local v1, font:I
    new-instance v2, Lcom/lge/media/TimedTextEx$TextAttribute;

    invoke-direct {v2, v0, v1}, Lcom/lge/media/TimedTextEx$TextAttribute;-><init>(II)V

    .line 2560
    .local v2, textAttribute:Lcom/lge/media/TimedTextEx$TextAttribute;
    iget-object v3, p0, Lcom/lge/media/TimedTextEx;->mTextAttribute:Ljava/util/ArrayList;

    iget v4, p0, Lcom/lge/media/TimedTextEx;->mIndex:I

    invoke-virtual {v3, v4, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2561
    return-void
.end method

.method private readCommand_ToggleWindows(Landroid/os/Parcel;)V
    .locals 4
    .parameter "parcel"

    .prologue
    .line 2649
    const-string v2, "TimedTextEx"

    const-string v3, "readCommand_ToggleWindows"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2651
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2652
    .local v1, windowMap:I
    new-instance v0, Lcom/lge/media/TimedTextEx$ToggleWindows;

    invoke-direct {v0, v1}, Lcom/lge/media/TimedTextEx$ToggleWindows;-><init>(I)V

    .line 2653
    .local v0, toggleWins:Lcom/lge/media/TimedTextEx$ToggleWindows;
    iget-object v2, p0, Lcom/lge/media/TimedTextEx;->mToggleWins:Ljava/util/ArrayList;

    iget v3, p0, Lcom/lge/media/TimedTextEx;->mIndex:I

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2654
    return-void
.end method

.method private readFont(Landroid/os/Parcel;)V
    .locals 8
    .parameter "parcel"

    .prologue
    .line 1850
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1852
    .local v0, entryCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1853
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1854
    .local v3, id:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1856
    .local v5, nameLen:I
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 1857
    .local v6, text:[B
    new-instance v4, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v4, v6, v7, v5}, Ljava/lang/String;-><init>([BII)V

    .line 1859
    .local v4, name:Ljava/lang/String;
    new-instance v1, Lcom/lge/media/TimedTextEx$Font;

    invoke-direct {v1, v3, v4}, Lcom/lge/media/TimedTextEx$Font;-><init>(ILjava/lang/String;)V

    .line 1861
    .local v1, font:Lcom/lge/media/TimedTextEx$Font;
    iget-object v7, p0, Lcom/lge/media/TimedTextEx;->mFontList:Ljava/util/List;

    if-nez v7, :cond_0

    .line 1862
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/lge/media/TimedTextEx;->mFontList:Ljava/util/List;

    .line 1864
    :cond_0
    iget-object v7, p0, Lcom/lge/media/TimedTextEx;->mFontList:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1852
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1866
    .end local v1           #font:Lcom/lge/media/TimedTextEx$Font;
    .end local v3           #id:I
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #nameLen:I
    .end local v6           #text:[B
    :cond_1
    return-void
.end method

.method private readHighlight(Landroid/os/Parcel;)V
    .locals 4
    .parameter "parcel"

    .prologue
    .line 1872
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1873
    .local v2, startChar:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1874
    .local v0, endChar:I
    new-instance v1, Lcom/lge/media/TimedTextEx$CharPos;

    invoke-direct {v1, v2, v0}, Lcom/lge/media/TimedTextEx$CharPos;-><init>(II)V

    .line 1876
    .local v1, pos:Lcom/lge/media/TimedTextEx$CharPos;
    iget-object v3, p0, Lcom/lge/media/TimedTextEx;->mHighlightPosList:Ljava/util/List;

    if-nez v3, :cond_0

    .line 1877
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/lge/media/TimedTextEx;->mHighlightPosList:Ljava/util/List;

    .line 1879
    :cond_0
    iget-object v3, p0, Lcom/lge/media/TimedTextEx;->mHighlightPosList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1880
    return-void
.end method

.method private readHyperText(Landroid/os/Parcel;)V
    .locals 9
    .parameter "parcel"

    .prologue
    const/4 v8, 0x0

    .line 1907
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1908
    .local v5, startChar:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1910
    .local v2, endChar:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1911
    .local v4, len:I
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 1912
    .local v6, url:[B
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6, v8, v4}, Ljava/lang/String;-><init>([BII)V

    .line 1914
    .local v7, urlString:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1915
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 1916
    .local v0, alt:[B
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, v8, v4}, Ljava/lang/String;-><init>([BII)V

    .line 1917
    .local v1, altString:Ljava/lang/String;
    new-instance v3, Lcom/lge/media/TimedTextEx$HyperText;

    invoke-direct {v3, v5, v2, v7, v1}, Lcom/lge/media/TimedTextEx$HyperText;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 1920
    .local v3, hyperText:Lcom/lge/media/TimedTextEx$HyperText;
    iget-object v8, p0, Lcom/lge/media/TimedTextEx;->mHyperTextList:Ljava/util/List;

    if-nez v8, :cond_0

    .line 1921
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/lge/media/TimedTextEx;->mHyperTextList:Ljava/util/List;

    .line 1923
    :cond_0
    iget-object v8, p0, Lcom/lge/media/TimedTextEx;->mHyperTextList:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1924
    return-void
.end method

.method private readKaraoke(Landroid/os/Parcel;)V
    .locals 8
    .parameter "parcel"

    .prologue
    .line 1886
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1888
    .local v2, entryCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 1889
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1890
    .local v6, startTimeMs:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1891
    .local v1, endTimeMs:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1892
    .local v5, startChar:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1893
    .local v0, endChar:I
    new-instance v4, Lcom/lge/media/TimedTextEx$Karaoke;

    invoke-direct {v4, v6, v1, v5, v0}, Lcom/lge/media/TimedTextEx$Karaoke;-><init>(IIII)V

    .line 1896
    .local v4, kara:Lcom/lge/media/TimedTextEx$Karaoke;
    iget-object v7, p0, Lcom/lge/media/TimedTextEx;->mKaraokeList:Ljava/util/List;

    if-nez v7, :cond_0

    .line 1897
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/lge/media/TimedTextEx;->mKaraokeList:Ljava/util/List;

    .line 1899
    :cond_0
    iget-object v7, p0, Lcom/lge/media/TimedTextEx;->mKaraokeList:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1888
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1901
    .end local v0           #endChar:I
    .end local v1           #endTimeMs:I
    .end local v4           #kara:Lcom/lge/media/TimedTextEx$Karaoke;
    .end local v5           #startChar:I
    .end local v6           #startTimeMs:I
    :cond_1
    return-void
.end method

.method private readStyle(Landroid/os/Parcel;)V
    .locals 14
    .parameter "parcel"

    .prologue
    .line 1787
    const/4 v9, 0x0

    .line 1788
    .local v9, endOfStyle:Z
    const/4 v1, -0x1

    .line 1789
    .local v1, startChar:I
    const/4 v2, -0x1

    .line 1790
    .local v2, endChar:I
    const/4 v3, -0x1

    .line 1791
    .local v3, fontId:I
    const/4 v4, 0x0

    .line 1792
    .local v4, isBold:Z
    const/4 v5, 0x0

    .line 1793
    .local v5, isItalic:Z
    const/4 v6, 0x0

    .line 1794
    .local v6, isUnderlined:Z
    const/4 v7, -0x1

    .line 1795
    .local v7, fontSize:I
    const/4 v8, -0x1

    .line 1796
    .local v8, colorRGBA:I
    :goto_0
    if-nez v9, :cond_3

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v12

    if-lez v12, :cond_3

    .line 1797
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1798
    .local v11, key:I
    sparse-switch v11, :sswitch_data_0

    .line 1831
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v12

    add-int/lit8 v12, v12, -0x4

    invoke-virtual {p1, v12}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1832
    const/4 v9, 0x1

    goto :goto_0

    .line 1800
    :sswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1801
    goto :goto_0

    .line 1804
    :sswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1805
    goto :goto_0

    .line 1808
    :sswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1809
    goto :goto_0

    .line 1812
    :sswitch_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1815
    .local v10, flags:I
    rem-int/lit8 v12, v10, 0x2

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    const/4 v4, 0x1

    .line 1816
    :goto_1
    rem-int/lit8 v12, v10, 0x4

    const/4 v13, 0x2

    if-lt v12, v13, :cond_1

    const/4 v5, 0x1

    .line 1817
    :goto_2
    div-int/lit8 v12, v10, 0x4

    const/4 v13, 0x1

    if-ne v12, v13, :cond_2

    const/4 v6, 0x1

    .line 1818
    :goto_3
    goto :goto_0

    .line 1815
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 1816
    :cond_1
    const/4 v5, 0x0

    goto :goto_2

    .line 1817
    :cond_2
    const/4 v6, 0x0

    goto :goto_3

    .line 1821
    .end local v10           #flags:I
    :sswitch_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1822
    goto :goto_0

    .line 1825
    :sswitch_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1826
    goto :goto_0

    .line 1838
    .end local v11           #key:I
    :cond_3
    new-instance v0, Lcom/lge/media/TimedTextEx$Style;

    invoke-direct/range {v0 .. v8}, Lcom/lge/media/TimedTextEx$Style;-><init>(IIIZZZII)V

    .line 1840
    .local v0, style:Lcom/lge/media/TimedTextEx$Style;
    iget-object v12, p0, Lcom/lge/media/TimedTextEx;->mStyleList:Ljava/util/List;

    if-nez v12, :cond_4

    .line 1841
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, p0, Lcom/lge/media/TimedTextEx;->mStyleList:Ljava/util/List;

    .line 1843
    :cond_4
    iget-object v12, p0, Lcom/lge/media/TimedTextEx;->mStyleList:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1844
    return-void

    .line 1798
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_3
        0x193 -> :sswitch_0
        0x194 -> :sswitch_1
        0x195 -> :sswitch_2
        0x196 -> :sswitch_4
        0x197 -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .prologue
    .line 1494
    iget-object v0, p0, Lcom/lge/media/TimedTextEx;->mData:[B

    return-object v0
.end method

.method public getLanguage()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1455
    iget-object v0, p0, Lcom/lge/media/TimedTextEx;->mLanguageList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLanguageCount()I
    .locals 1

    .prologue
    .line 1445
    iget v0, p0, Lcom/lge/media/TimedTextEx;->mLanguageCount:I

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1422
    iget-object v0, p0, Lcom/lge/media/TimedTextEx;->mMimeTypeChars:Ljava/lang/String;

    return-object v0
.end method

.method public getObject(I)Ljava/lang/Object;
    .locals 3
    .parameter "key"

    .prologue
    .line 1479
    invoke-direct {p0, p1}, Lcom/lge/media/TimedTextEx;->isValidKey(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1480
    iget-object v0, p0, Lcom/lge/media/TimedTextEx;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1481
    iget-object v0, p0, Lcom/lge/media/TimedTextEx;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1483
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1486
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getServiceNumber()[I
    .locals 1

    .prologue
    .line 1508
    iget-object v0, p0, Lcom/lge/media/TimedTextEx;->mServiceNumberList:[I

    return-object v0
.end method

.method public getServiceNumberMax()I
    .locals 1

    .prologue
    .line 1501
    iget v0, p0, Lcom/lge/media/TimedTextEx;->mServiceNumberMax:I

    return v0
.end method

.method public getStartTimeMs()I
    .locals 1

    .prologue
    .line 1433
    iget v0, p0, Lcom/lge/media/TimedTextEx;->mStartTimeMs:I

    return v0
.end method

.method public getText()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1465
    iget-object v0, p0, Lcom/lge/media/TimedTextEx;->mTextList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 2816
    iget-object v0, p0, Lcom/lge/media/TimedTextEx;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
