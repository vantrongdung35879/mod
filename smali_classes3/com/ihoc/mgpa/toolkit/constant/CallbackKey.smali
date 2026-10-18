.class public final enum Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

.field public static final enum APP_DATEFORWARD:Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

.field public static final enum COPY_PREDOWNLOAD_FROM_PROVIDER:Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

.field public static final enum CPU_LOCK:Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

.field public static final enum FPSSTRATEGY:Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

.field public static final enum FRME_INTERPOLATION:Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

.field public static final enum INIT_ACTION:Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

.field public static final enum LOWPOWER:Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

.field public static final enum PRE_DOWNLOAD_SERVICE:Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

.field public static final enum RECODE_SCREEN_JSON:Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

.field public static final enum SUPER_RESOLUTION:Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

.field public static final enum TRANSCEIVER:Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

.field public static final enum VACANT_DOWNLOAD:Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

.field public static final enum VENDOR:Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;


# instance fields
.field private key:I


# direct methods
.method private static synthetic $values()[Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;
    .locals 3

    const/16 v0, 0xd

    .line 1
    new-array v0, v0, [Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;->LOWPOWER:Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;->FPSSTRATEGY:Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;->VENDOR:Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;->TRANSCEIVER:Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;->APP_DATEFORWARD:Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;->CPU_LOCK:Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;->VACANT_DOWNLOAD:Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;->COPY_PREDOWNLOAD_FROM_PROVIDER:Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;->RECODE_SCREEN_JSON:Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;->PRE_DOWNLOAD_SERVICE:Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;->FRME_INTERPOLATION:Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;->SUPER_RESOLUTION:Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;->INIT_ACTION:Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

    const-string v1, "LOWPOWER"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;->LOWPOWER:Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

    .line 2
    new-instance v0, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

    const-string v1, "FPSSTRATEGY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;->FPSSTRATEGY:Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

    .line 3
    new-instance v0, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

    const-string v1, "VENDOR"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;->VENDOR:Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

    .line 4
    new-instance v0, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

    const-string v1, "TRANSCEIVER"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;->TRANSCEIVER:Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

    .line 5
    new-instance v0, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

    const-string v1, "APP_DATEFORWARD"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;->APP_DATEFORWARD:Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

    .line 6
    new-instance v0, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

    const-string v1, "CPU_LOCK"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v3, v2}, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;->CPU_LOCK:Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

    .line 7
    new-instance v0, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

    const-string v1, "VACANT_DOWNLOAD"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;->VACANT_DOWNLOAD:Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

    .line 8
    new-instance v0, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

    const-string v1, "COPY_PREDOWNLOAD_FROM_PROVIDER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v3, v2}, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;->COPY_PREDOWNLOAD_FROM_PROVIDER:Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

    .line 9
    new-instance v0, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

    const-string v1, "RECODE_SCREEN_JSON"

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;->RECODE_SCREEN_JSON:Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

    .line 10
    new-instance v0, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

    const-string v1, "PRE_DOWNLOAD_SERVICE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v3, v2}, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;->PRE_DOWNLOAD_SERVICE:Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

    .line 11
    new-instance v0, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

    const-string v1, "FRME_INTERPOLATION"

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;->FRME_INTERPOLATION:Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

    .line 12
    new-instance v0, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

    const-string v1, "SUPER_RESOLUTION"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v3, v2}, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;->SUPER_RESOLUTION:Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

    .line 13
    new-instance v0, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

    const-string v1, "INIT_ACTION"

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;->INIT_ACTION:Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

    .line 14
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;->$values()[Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

    move-result-object v0

    sput-object v0, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;->$VALUES:[Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;->key:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;
    .locals 1

    .line 1
    const-class v0, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

    return-object p0
.end method

.method public static values()[Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;->$VALUES:[Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

    invoke-virtual {v0}, [Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

    return-object v0
.end method


# virtual methods
.method public getKey()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;->key:I

    return v0
.end method

.method public getKeyStr()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;->key:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
