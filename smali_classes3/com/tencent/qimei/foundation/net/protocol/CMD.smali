.class public final enum Lcom/tencent/qimei/foundation/net/protocol/CMD;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/qimei/foundation/net/protocol/CMD;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum APM:Lcom/tencent/qimei/foundation/net/protocol/CMD;

.field public static final enum AUDIT:Lcom/tencent/qimei/foundation/net/protocol/CMD;

.field public static final enum AUDIT_SETTING:Lcom/tencent/qimei/foundation/net/protocol/CMD;

.field public static final enum BEAT:Lcom/tencent/qimei/foundation/net/protocol/CMD;

.field public static final enum GET_OID:Lcom/tencent/qimei/foundation/net/protocol/CMD;

.field public static final enum H5_BIND:Lcom/tencent/qimei/foundation/net/protocol/CMD;

.field public static final enum PWD_CHANGE:Lcom/tencent/qimei/foundation/net/protocol/CMD;

.field public static final enum QM_SETTING:Lcom/tencent/qimei/foundation/net/protocol/CMD;

.field public static final enum REGISTER:Lcom/tencent/qimei/foundation/net/protocol/CMD;

.field public static final enum TASK_SETTING:Lcom/tencent/qimei/foundation/net/protocol/CMD;

.field public static final synthetic a:[Lcom/tencent/qimei/foundation/net/protocol/CMD;


# instance fields
.field private final cmd:I

.field private final maxBodySize:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/tencent/qimei/foundation/net/protocol/CMD;

    const/16 v1, 0x12

    const-string v2, "REGISTER"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/tencent/qimei/foundation/net/protocol/CMD;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/tencent/qimei/foundation/net/protocol/CMD;->REGISTER:Lcom/tencent/qimei/foundation/net/protocol/CMD;

    new-instance v1, Lcom/tencent/qimei/foundation/net/protocol/CMD;

    const-string v2, "AUDIT"

    const/4 v5, 0x2

    invoke-direct {v1, v2, v4, v5, v3}, Lcom/tencent/qimei/foundation/net/protocol/CMD;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/tencent/qimei/foundation/net/protocol/CMD;->AUDIT:Lcom/tencent/qimei/foundation/net/protocol/CMD;

    new-instance v2, Lcom/tencent/qimei/foundation/net/protocol/CMD;

    const-string v6, "APM"

    const/4 v7, 0x3

    const/16 v8, 0xd

    invoke-direct {v2, v6, v5, v7, v8}, Lcom/tencent/qimei/foundation/net/protocol/CMD;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lcom/tencent/qimei/foundation/net/protocol/CMD;->APM:Lcom/tencent/qimei/foundation/net/protocol/CMD;

    .line 2
    new-instance v6, Lcom/tencent/qimei/foundation/net/protocol/CMD;

    const-string v9, "QM_SETTING"

    const/4 v10, 0x4

    invoke-direct {v6, v9, v7, v10, v4}, Lcom/tencent/qimei/foundation/net/protocol/CMD;-><init>(Ljava/lang/String;III)V

    sput-object v6, Lcom/tencent/qimei/foundation/net/protocol/CMD;->QM_SETTING:Lcom/tencent/qimei/foundation/net/protocol/CMD;

    new-instance v9, Lcom/tencent/qimei/foundation/net/protocol/CMD;

    const-string v11, "AUDIT_SETTING"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v10, v12, v3}, Lcom/tencent/qimei/foundation/net/protocol/CMD;-><init>(Ljava/lang/String;III)V

    sput-object v9, Lcom/tencent/qimei/foundation/net/protocol/CMD;->AUDIT_SETTING:Lcom/tencent/qimei/foundation/net/protocol/CMD;

    new-instance v11, Lcom/tencent/qimei/foundation/net/protocol/CMD;

    const-string v13, "TASK_SETTING"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v12, v14, v3}, Lcom/tencent/qimei/foundation/net/protocol/CMD;-><init>(Ljava/lang/String;III)V

    sput-object v11, Lcom/tencent/qimei/foundation/net/protocol/CMD;->TASK_SETTING:Lcom/tencent/qimei/foundation/net/protocol/CMD;

    .line 3
    new-instance v13, Lcom/tencent/qimei/foundation/net/protocol/CMD;

    const-string v15, "BEAT"

    const/4 v10, 0x7

    invoke-direct {v13, v15, v14, v10, v12}, Lcom/tencent/qimei/foundation/net/protocol/CMD;-><init>(Ljava/lang/String;III)V

    sput-object v13, Lcom/tencent/qimei/foundation/net/protocol/CMD;->BEAT:Lcom/tencent/qimei/foundation/net/protocol/CMD;

    new-instance v15, Lcom/tencent/qimei/foundation/net/protocol/CMD;

    const-string v14, "PWD_CHANGE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v10, v12, v3}, Lcom/tencent/qimei/foundation/net/protocol/CMD;-><init>(Ljava/lang/String;III)V

    sput-object v15, Lcom/tencent/qimei/foundation/net/protocol/CMD;->PWD_CHANGE:Lcom/tencent/qimei/foundation/net/protocol/CMD;

    new-instance v14, Lcom/tencent/qimei/foundation/net/protocol/CMD;

    const-string v10, "H5_BIND"

    const/16 v5, 0xb

    invoke-direct {v14, v10, v12, v5, v12}, Lcom/tencent/qimei/foundation/net/protocol/CMD;-><init>(Ljava/lang/String;III)V

    sput-object v14, Lcom/tencent/qimei/foundation/net/protocol/CMD;->H5_BIND:Lcom/tencent/qimei/foundation/net/protocol/CMD;

    .line 4
    new-instance v5, Lcom/tencent/qimei/foundation/net/protocol/CMD;

    const-string v10, "GET_OID"

    const/16 v12, 0x9

    invoke-direct {v5, v10, v12, v8, v7}, Lcom/tencent/qimei/foundation/net/protocol/CMD;-><init>(Ljava/lang/String;III)V

    sput-object v5, Lcom/tencent/qimei/foundation/net/protocol/CMD;->GET_OID:Lcom/tencent/qimei/foundation/net/protocol/CMD;

    const/16 v8, 0xa

    .line 5
    new-array v8, v8, [Lcom/tencent/qimei/foundation/net/protocol/CMD;

    aput-object v0, v8, v3

    aput-object v1, v8, v4

    const/4 v0, 0x2

    aput-object v2, v8, v0

    aput-object v6, v8, v7

    const/4 v0, 0x4

    aput-object v9, v8, v0

    const/4 v0, 0x5

    aput-object v11, v8, v0

    const/4 v0, 0x6

    aput-object v13, v8, v0

    const/4 v0, 0x7

    aput-object v15, v8, v0

    const/16 v0, 0x8

    aput-object v14, v8, v0

    aput-object v5, v8, v12

    .line 6
    sput-object v8, Lcom/tencent/qimei/foundation/net/protocol/CMD;->a:[Lcom/tencent/qimei/foundation/net/protocol/CMD;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/tencent/qimei/foundation/net/protocol/CMD;->cmd:I

    .line 3
    iput p4, p0, Lcom/tencent/qimei/foundation/net/protocol/CMD;->maxBodySize:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/qimei/foundation/net/protocol/CMD;
    .locals 1

    .line 1
    const-class v0, Lcom/tencent/qimei/foundation/net/protocol/CMD;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/qimei/foundation/net/protocol/CMD;

    return-object p0
.end method

.method public static values()[Lcom/tencent/qimei/foundation/net/protocol/CMD;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/qimei/foundation/net/protocol/CMD;->a:[Lcom/tencent/qimei/foundation/net/protocol/CMD;

    invoke-virtual {v0}, [Lcom/tencent/qimei/foundation/net/protocol/CMD;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/qimei/foundation/net/protocol/CMD;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/qimei/foundation/net/protocol/CMD;->maxBodySize:I

    return v0
.end method

.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/qimei/foundation/net/protocol/CMD;->cmd:I

    return v0
.end method
