.class public final enum Lcom/beetalk/sdk/networking/ResultCode;
.super Ljava/lang/Enum;
.source "ResultCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/beetalk/sdk/networking/ResultCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/beetalk/sdk/networking/ResultCode;

.field private static final CODES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/beetalk/sdk/networking/ResultCode;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum ERR_DISPLAY_RESULT:Lcom/beetalk/sdk/networking/ResultCode;

.field public static final enum ERR_PARAMS:Lcom/beetalk/sdk/networking/ResultCode;

.field public static final enum ERR_PARSE:Lcom/beetalk/sdk/networking/ResultCode;

.field public static final enum ERR_PLATFORM:Lcom/beetalk/sdk/networking/ResultCode;

.field public static final enum ERR_SCOPE:Lcom/beetalk/sdk/networking/ResultCode;

.field public static final enum ERR_SUBS_BINDING:Lcom/beetalk/sdk/networking/ResultCode;

.field public static final enum ERR_SUBS_GET_DETAILS:Lcom/beetalk/sdk/networking/ResultCode;

.field public static final enum ERR_TOKEN:Lcom/beetalk/sdk/networking/ResultCode;

.field public static final enum INVALID_SIGNATURE:Lcom/beetalk/sdk/networking/ResultCode;

.field public static final enum NO_AUTH:Lcom/beetalk/sdk/networking/ResultCode;

.field public static final enum PENDING_TRANSACTION:Lcom/beetalk/sdk/networking/ResultCode;

.field public static final enum SUCCESS:Lcom/beetalk/sdk/networking/ResultCode;

.field public static final enum UNKNOWN:Lcom/beetalk/sdk/networking/ResultCode;


# instance fields
.field private final code:I

.field private final message:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/beetalk/sdk/networking/ResultCode;
    .locals 3

    const/16 v0, 0xd

    .line 9
    new-array v0, v0, [Lcom/beetalk/sdk/networking/ResultCode;

    sget-object v1, Lcom/beetalk/sdk/networking/ResultCode;->ERR_PARSE:Lcom/beetalk/sdk/networking/ResultCode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/beetalk/sdk/networking/ResultCode;->SUCCESS:Lcom/beetalk/sdk/networking/ResultCode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/beetalk/sdk/networking/ResultCode;->UNKNOWN:Lcom/beetalk/sdk/networking/ResultCode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/beetalk/sdk/networking/ResultCode;->PENDING_TRANSACTION:Lcom/beetalk/sdk/networking/ResultCode;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/beetalk/sdk/networking/ResultCode;->ERR_PARAMS:Lcom/beetalk/sdk/networking/ResultCode;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/beetalk/sdk/networking/ResultCode;->ERR_TOKEN:Lcom/beetalk/sdk/networking/ResultCode;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/beetalk/sdk/networking/ResultCode;->ERR_SCOPE:Lcom/beetalk/sdk/networking/ResultCode;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/beetalk/sdk/networking/ResultCode;->NO_AUTH:Lcom/beetalk/sdk/networking/ResultCode;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/beetalk/sdk/networking/ResultCode;->INVALID_SIGNATURE:Lcom/beetalk/sdk/networking/ResultCode;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/beetalk/sdk/networking/ResultCode;->ERR_PLATFORM:Lcom/beetalk/sdk/networking/ResultCode;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/beetalk/sdk/networking/ResultCode;->ERR_DISPLAY_RESULT:Lcom/beetalk/sdk/networking/ResultCode;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/beetalk/sdk/networking/ResultCode;->ERR_SUBS_BINDING:Lcom/beetalk/sdk/networking/ResultCode;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/beetalk/sdk/networking/ResultCode;->ERR_SUBS_GET_DETAILS:Lcom/beetalk/sdk/networking/ResultCode;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 10
    new-instance v0, Lcom/beetalk/sdk/networking/ResultCode;

    const/4 v1, -0x1

    const-string v2, "Failed to parse response"

    const-string v3, "ERR_PARSE"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/beetalk/sdk/networking/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/beetalk/sdk/networking/ResultCode;->ERR_PARSE:Lcom/beetalk/sdk/networking/ResultCode;

    .line 12
    new-instance v0, Lcom/beetalk/sdk/networking/ResultCode;

    const-string v1, "Success"

    const-string v2, "SUCCESS"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/beetalk/sdk/networking/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/beetalk/sdk/networking/ResultCode;->SUCCESS:Lcom/beetalk/sdk/networking/ResultCode;

    .line 13
    new-instance v0, Lcom/beetalk/sdk/networking/ResultCode;

    const/4 v1, 0x2

    const-string v2, "Unknown error"

    const-string v5, "UNKNOWN"

    invoke-direct {v0, v5, v1, v3, v2}, Lcom/beetalk/sdk/networking/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/beetalk/sdk/networking/ResultCode;->UNKNOWN:Lcom/beetalk/sdk/networking/ResultCode;

    .line 14
    new-instance v0, Lcom/beetalk/sdk/networking/ResultCode;

    const/4 v1, 0x3

    const-string v2, "Pending transaction"

    const-string v3, "PENDING_TRANSACTION"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/beetalk/sdk/networking/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/beetalk/sdk/networking/ResultCode;->PENDING_TRANSACTION:Lcom/beetalk/sdk/networking/ResultCode;

    .line 16
    new-instance v0, Lcom/beetalk/sdk/networking/ResultCode;

    const/16 v1, 0x3e9

    const-string v2, "Error params"

    const-string v3, "ERR_PARAMS"

    const/4 v5, 0x4

    invoke-direct {v0, v3, v5, v1, v2}, Lcom/beetalk/sdk/networking/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/beetalk/sdk/networking/ResultCode;->ERR_PARAMS:Lcom/beetalk/sdk/networking/ResultCode;

    .line 17
    new-instance v0, Lcom/beetalk/sdk/networking/ResultCode;

    const/16 v1, 0x3ea

    const-string v2, "Error token"

    const-string v3, "ERR_TOKEN"

    const/4 v5, 0x5

    invoke-direct {v0, v3, v5, v1, v2}, Lcom/beetalk/sdk/networking/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/beetalk/sdk/networking/ResultCode;->ERR_TOKEN:Lcom/beetalk/sdk/networking/ResultCode;

    .line 18
    new-instance v0, Lcom/beetalk/sdk/networking/ResultCode;

    const/16 v1, 0x3eb

    const-string v2, "Error scope"

    const-string v3, "ERR_SCOPE"

    const/4 v5, 0x6

    invoke-direct {v0, v3, v5, v1, v2}, Lcom/beetalk/sdk/networking/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/beetalk/sdk/networking/ResultCode;->ERR_SCOPE:Lcom/beetalk/sdk/networking/ResultCode;

    .line 19
    new-instance v0, Lcom/beetalk/sdk/networking/ResultCode;

    const/16 v1, 0x3ec

    const-string v2, "Not Authorize"

    const-string v3, "NO_AUTH"

    const/4 v5, 0x7

    invoke-direct {v0, v3, v5, v1, v2}, Lcom/beetalk/sdk/networking/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/beetalk/sdk/networking/ResultCode;->NO_AUTH:Lcom/beetalk/sdk/networking/ResultCode;

    .line 20
    new-instance v0, Lcom/beetalk/sdk/networking/ResultCode;

    const/16 v1, 0x3ed

    const-string v2, "Invalid Signature"

    const-string v3, "INVALID_SIGNATURE"

    const/16 v5, 0x8

    invoke-direct {v0, v3, v5, v1, v2}, Lcom/beetalk/sdk/networking/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/beetalk/sdk/networking/ResultCode;->INVALID_SIGNATURE:Lcom/beetalk/sdk/networking/ResultCode;

    .line 22
    new-instance v0, Lcom/beetalk/sdk/networking/ResultCode;

    const/16 v1, 0x44d

    const-string v2, "Error user platform"

    const-string v3, "ERR_PLATFORM"

    const/16 v5, 0x9

    invoke-direct {v0, v3, v5, v1, v2}, Lcom/beetalk/sdk/networking/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/beetalk/sdk/networking/ResultCode;->ERR_PLATFORM:Lcom/beetalk/sdk/networking/ResultCode;

    .line 24
    new-instance v0, Lcom/beetalk/sdk/networking/ResultCode;

    const/16 v1, 0x7d0

    const-string v2, "Error display result (task error)"

    const-string v3, "ERR_DISPLAY_RESULT"

    const/16 v5, 0xa

    invoke-direct {v0, v3, v5, v1, v2}, Lcom/beetalk/sdk/networking/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/beetalk/sdk/networking/ResultCode;->ERR_DISPLAY_RESULT:Lcom/beetalk/sdk/networking/ResultCode;

    .line 26
    new-instance v0, Lcom/beetalk/sdk/networking/ResultCode;

    const/16 v1, 0xbb9

    const-string v2, "Error subscription binding"

    const-string v3, "ERR_SUBS_BINDING"

    const/16 v5, 0xb

    invoke-direct {v0, v3, v5, v1, v2}, Lcom/beetalk/sdk/networking/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/beetalk/sdk/networking/ResultCode;->ERR_SUBS_BINDING:Lcom/beetalk/sdk/networking/ResultCode;

    .line 27
    new-instance v0, Lcom/beetalk/sdk/networking/ResultCode;

    const/16 v1, 0xbba

    const-string v2, "Error subscription get details failed"

    const-string v3, "ERR_SUBS_GET_DETAILS"

    const/16 v5, 0xc

    invoke-direct {v0, v3, v5, v1, v2}, Lcom/beetalk/sdk/networking/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/beetalk/sdk/networking/ResultCode;->ERR_SUBS_GET_DETAILS:Lcom/beetalk/sdk/networking/ResultCode;

    .line 9
    invoke-static {}, Lcom/beetalk/sdk/networking/ResultCode;->$values()[Lcom/beetalk/sdk/networking/ResultCode;

    move-result-object v0

    sput-object v0, Lcom/beetalk/sdk/networking/ResultCode;->$VALUES:[Lcom/beetalk/sdk/networking/ResultCode;

    .line 32
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/beetalk/sdk/networking/ResultCode;->CODES:Landroid/util/SparseArray;

    .line 35
    invoke-static {}, Lcom/beetalk/sdk/networking/ResultCode;->values()[Lcom/beetalk/sdk/networking/ResultCode;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v2, v0, v4

    .line 36
    sget-object v3, Lcom/beetalk/sdk/networking/ResultCode;->CODES:Landroid/util/SparseArray;

    invoke-virtual {v2}, Lcom/beetalk/sdk/networking/ResultCode;->getCode()I

    move-result v5

    invoke-virtual {v3, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput p3, p0, Lcom/beetalk/sdk/networking/ResultCode;->code:I

    .line 42
    iput-object p4, p0, Lcom/beetalk/sdk/networking/ResultCode;->message:Ljava/lang/String;

    return-void
.end method

.method public static getMessageFromCode(I)Ljava/lang/String;
    .locals 2

    .line 54
    sget-object v0, Lcom/beetalk/sdk/networking/ResultCode;->CODES:Landroid/util/SparseArray;

    sget-object v1, Lcom/beetalk/sdk/networking/ResultCode;->ERR_PARSE:Lcom/beetalk/sdk/networking/ResultCode;

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/beetalk/sdk/networking/ResultCode;

    .line 55
    invoke-virtual {p0}, Lcom/beetalk/sdk/networking/ResultCode;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getResultCodeByCodeValue(I)Lcom/beetalk/sdk/networking/ResultCode;
    .locals 1

    .line 59
    sget-object v0, Lcom/beetalk/sdk/networking/ResultCode;->CODES:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/beetalk/sdk/networking/ResultCode;

    if-nez p0, :cond_0

    .line 61
    sget-object p0, Lcom/beetalk/sdk/networking/ResultCode;->ERR_PARSE:Lcom/beetalk/sdk/networking/ResultCode;

    :cond_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/beetalk/sdk/networking/ResultCode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 9
    const-class v0, Lcom/beetalk/sdk/networking/ResultCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/beetalk/sdk/networking/ResultCode;

    return-object p0
.end method

.method public static values()[Lcom/beetalk/sdk/networking/ResultCode;
    .locals 1

    .line 9
    sget-object v0, Lcom/beetalk/sdk/networking/ResultCode;->$VALUES:[Lcom/beetalk/sdk/networking/ResultCode;

    invoke-virtual {v0}, [Lcom/beetalk/sdk/networking/ResultCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/beetalk/sdk/networking/ResultCode;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/beetalk/sdk/networking/ResultCode;->code:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/beetalk/sdk/networking/ResultCode;->message:Ljava/lang/String;

    return-object v0
.end method
