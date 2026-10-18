.class public final enum Lcom/intlgame/video/INTLServiceId;
.super Ljava/lang/Enum;
.source "INTLServiceId.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/intlgame/video/INTLServiceId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/intlgame/video/INTLServiceId;

.field public static final enum INTL_SERVICE_IMAGE_UPLOAD:Lcom/intlgame/video/INTLServiceId;

.field public static final enum INTL_SERVICE_REQUEST_ALBUN_PERMISSION:Lcom/intlgame/video/INTLServiceId;

.field public static final enum INTL_SERVICE_VIDEO_MOMENT_GENERATION:Lcom/intlgame/video/INTLServiceId;

.field public static final enum INTL_SERVICE_VIDEO_MOMENT_RECORD:Lcom/intlgame/video/INTLServiceId;

.field public static final enum INTL_SERVICE_VIDEO_NORMAL_RECORD:Lcom/intlgame/video/INTLServiceId;

.field public static final enum INTL_SERVICE_VIDEO_PLAYER:Lcom/intlgame/video/INTLServiceId;

.field public static final enum INTL_SERVICE_VIDEO_RECORD:Lcom/intlgame/video/INTLServiceId;

.field public static final enum INTL_SERVICE_VIDEO_UPLOAD:Lcom/intlgame/video/INTLServiceId;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/intlgame/video/INTLServiceId;
    .locals 3

    const/16 v0, 0x8

    .line 6
    new-array v0, v0, [Lcom/intlgame/video/INTLServiceId;

    sget-object v1, Lcom/intlgame/video/INTLServiceId;->INTL_SERVICE_VIDEO_PLAYER:Lcom/intlgame/video/INTLServiceId;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/intlgame/video/INTLServiceId;->INTL_SERVICE_VIDEO_RECORD:Lcom/intlgame/video/INTLServiceId;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/intlgame/video/INTLServiceId;->INTL_SERVICE_VIDEO_NORMAL_RECORD:Lcom/intlgame/video/INTLServiceId;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/intlgame/video/INTLServiceId;->INTL_SERVICE_VIDEO_MOMENT_RECORD:Lcom/intlgame/video/INTLServiceId;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/intlgame/video/INTLServiceId;->INTL_SERVICE_VIDEO_MOMENT_GENERATION:Lcom/intlgame/video/INTLServiceId;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/intlgame/video/INTLServiceId;->INTL_SERVICE_IMAGE_UPLOAD:Lcom/intlgame/video/INTLServiceId;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/intlgame/video/INTLServiceId;->INTL_SERVICE_VIDEO_UPLOAD:Lcom/intlgame/video/INTLServiceId;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/intlgame/video/INTLServiceId;->INTL_SERVICE_REQUEST_ALBUN_PERMISSION:Lcom/intlgame/video/INTLServiceId;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 8
    new-instance v0, Lcom/intlgame/video/INTLServiceId;

    const-string v1, "INTL_SERVICE_VIDEO_PLAYER"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/intlgame/video/INTLServiceId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/intlgame/video/INTLServiceId;->INTL_SERVICE_VIDEO_PLAYER:Lcom/intlgame/video/INTLServiceId;

    .line 9
    new-instance v0, Lcom/intlgame/video/INTLServiceId;

    const-string v1, "INTL_SERVICE_VIDEO_RECORD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/intlgame/video/INTLServiceId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/intlgame/video/INTLServiceId;->INTL_SERVICE_VIDEO_RECORD:Lcom/intlgame/video/INTLServiceId;

    .line 10
    new-instance v0, Lcom/intlgame/video/INTLServiceId;

    const-string v1, "INTL_SERVICE_VIDEO_NORMAL_RECORD"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/intlgame/video/INTLServiceId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/intlgame/video/INTLServiceId;->INTL_SERVICE_VIDEO_NORMAL_RECORD:Lcom/intlgame/video/INTLServiceId;

    .line 11
    new-instance v0, Lcom/intlgame/video/INTLServiceId;

    const-string v1, "INTL_SERVICE_VIDEO_MOMENT_RECORD"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/intlgame/video/INTLServiceId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/intlgame/video/INTLServiceId;->INTL_SERVICE_VIDEO_MOMENT_RECORD:Lcom/intlgame/video/INTLServiceId;

    .line 12
    new-instance v0, Lcom/intlgame/video/INTLServiceId;

    const-string v1, "INTL_SERVICE_VIDEO_MOMENT_GENERATION"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/intlgame/video/INTLServiceId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/intlgame/video/INTLServiceId;->INTL_SERVICE_VIDEO_MOMENT_GENERATION:Lcom/intlgame/video/INTLServiceId;

    .line 13
    new-instance v0, Lcom/intlgame/video/INTLServiceId;

    const-string v1, "INTL_SERVICE_IMAGE_UPLOAD"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v3, v2}, Lcom/intlgame/video/INTLServiceId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/intlgame/video/INTLServiceId;->INTL_SERVICE_IMAGE_UPLOAD:Lcom/intlgame/video/INTLServiceId;

    .line 14
    new-instance v0, Lcom/intlgame/video/INTLServiceId;

    const-string v1, "INTL_SERVICE_VIDEO_UPLOAD"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/intlgame/video/INTLServiceId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/intlgame/video/INTLServiceId;->INTL_SERVICE_VIDEO_UPLOAD:Lcom/intlgame/video/INTLServiceId;

    .line 15
    new-instance v0, Lcom/intlgame/video/INTLServiceId;

    const-string v1, "INTL_SERVICE_REQUEST_ALBUN_PERMISSION"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v3, v2}, Lcom/intlgame/video/INTLServiceId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/intlgame/video/INTLServiceId;->INTL_SERVICE_REQUEST_ALBUN_PERMISSION:Lcom/intlgame/video/INTLServiceId;

    .line 6
    invoke-static {}, Lcom/intlgame/video/INTLServiceId;->$values()[Lcom/intlgame/video/INTLServiceId;

    move-result-object v0

    sput-object v0, Lcom/intlgame/video/INTLServiceId;->$VALUES:[Lcom/intlgame/video/INTLServiceId;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput p3, p0, Lcom/intlgame/video/INTLServiceId;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/intlgame/video/INTLServiceId;
    .locals 1

    .line 6
    const-class v0, Lcom/intlgame/video/INTLServiceId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/intlgame/video/INTLServiceId;

    return-object p0
.end method

.method public static values()[Lcom/intlgame/video/INTLServiceId;
    .locals 1

    .line 6
    sget-object v0, Lcom/intlgame/video/INTLServiceId;->$VALUES:[Lcom/intlgame/video/INTLServiceId;

    invoke-virtual {v0}, [Lcom/intlgame/video/INTLServiceId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/intlgame/video/INTLServiceId;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/intlgame/video/INTLServiceId;->value:I

    return v0
.end method
