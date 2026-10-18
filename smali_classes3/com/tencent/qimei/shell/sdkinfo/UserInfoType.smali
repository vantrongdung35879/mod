.class public final enum Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum MAX_TYPE_SIZE:Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;

.field public static final enum TYPE_APP_KEY:Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;

.field public static final enum TYPE_APP_VERSION:Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;

.field public static final enum TYPE_CHANNEL_ID:Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;

.field public static final enum TYPE_MODEL:Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;

.field public static final enum TYPE_NET_WORK_TYPE:Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;

.field public static final enum TYPE_OS_VERSION:Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;

.field public static final enum TYPE_OZ:Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;

.field public static final enum TYPE_PRE_AUDIT_STATE:Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;

.field public static final enum TYPE_Q16:Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;

.field public static final enum TYPE_Q36:Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;

.field public static final enum TYPE_SDK_VERSION:Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;

.field public static final enum TYPE_USER_ID_PARAM:Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;

.field public static final synthetic a:[Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;

    const-string v1, "TYPE_APP_KEY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;->TYPE_APP_KEY:Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;

    .line 2
    new-instance v1, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;

    const-string v3, "TYPE_NET_WORK_TYPE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;->TYPE_NET_WORK_TYPE:Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;

    .line 3
    new-instance v3, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;

    const-string v5, "TYPE_SDK_VERSION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;->TYPE_SDK_VERSION:Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;

    .line 4
    new-instance v5, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;

    const-string v7, "TYPE_APP_VERSION"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;->TYPE_APP_VERSION:Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;

    .line 5
    new-instance v7, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;

    const-string v9, "TYPE_CHANNEL_ID"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;->TYPE_CHANNEL_ID:Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;

    .line 6
    new-instance v9, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;

    const-string v11, "TYPE_USER_ID_PARAM"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;->TYPE_USER_ID_PARAM:Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;

    .line 7
    new-instance v11, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;

    const-string v13, "TYPE_OS_VERSION"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;->TYPE_OS_VERSION:Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;

    .line 8
    new-instance v13, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;

    const-string v15, "TYPE_Q16"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;->TYPE_Q16:Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;

    .line 9
    new-instance v15, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;

    const-string v14, "TYPE_Q36"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;->TYPE_Q36:Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;

    .line 10
    new-instance v14, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;

    const-string v12, "TYPE_MODEL"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;->TYPE_MODEL:Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;

    .line 11
    new-instance v12, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;

    const-string v10, "TYPE_PRE_AUDIT_STATE"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;->TYPE_PRE_AUDIT_STATE:Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;

    .line 12
    new-instance v10, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;

    const-string v8, "TYPE_OZ"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;->TYPE_OZ:Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;

    .line 13
    new-instance v8, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;

    const-string v6, "MAX_TYPE_SIZE"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;->MAX_TYPE_SIZE:Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;

    const/16 v6, 0xd

    .line 14
    new-array v6, v6, [Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;

    aput-object v0, v6, v2

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    aput-object v8, v6, v4

    .line 15
    sput-object v6, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;->a:[Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;
    .locals 1

    .line 1
    const-class v0, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;

    return-object p0
.end method

.method public static values()[Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;->a:[Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;

    invoke-virtual {v0}, [Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;->value:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/qimei/shell/sdkinfo/UserInfoType;->value:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
