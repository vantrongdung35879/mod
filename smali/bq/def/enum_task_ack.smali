.class public final enum Lbq/def/enum_task_ack;
.super Ljava/lang/Enum;
.source "enum_task_ack.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbq/def/enum_task_ack;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbq/def/enum_task_ack;

.field public static final enum error:Lbq/def/enum_task_ack;

.field public static final enum ignore:Lbq/def/enum_task_ack;

.field public static final enum pending:Lbq/def/enum_task_ack;

.field public static final enum success:Lbq/def/enum_task_ack;

.field public static final enum unrecognized:Lbq/def/enum_task_ack;


# direct methods
.method private static synthetic $values()[Lbq/def/enum_task_ack;
    .locals 3

    const/4 v0, 0x5

    .line 7
    new-array v0, v0, [Lbq/def/enum_task_ack;

    sget-object v1, Lbq/def/enum_task_ack;->success:Lbq/def/enum_task_ack;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lbq/def/enum_task_ack;->pending:Lbq/def/enum_task_ack;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lbq/def/enum_task_ack;->ignore:Lbq/def/enum_task_ack;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lbq/def/enum_task_ack;->error:Lbq/def/enum_task_ack;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lbq/def/enum_task_ack;->unrecognized:Lbq/def/enum_task_ack;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 8
    new-instance v0, Lbq/def/enum_task_ack;

    const-string/jumbo v1, "success"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbq/def/enum_task_ack;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbq/def/enum_task_ack;->success:Lbq/def/enum_task_ack;

    .line 9
    new-instance v0, Lbq/def/enum_task_ack;

    const-string v1, "pending"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lbq/def/enum_task_ack;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbq/def/enum_task_ack;->pending:Lbq/def/enum_task_ack;

    .line 10
    new-instance v0, Lbq/def/enum_task_ack;

    const-string v1, "ignore"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lbq/def/enum_task_ack;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbq/def/enum_task_ack;->ignore:Lbq/def/enum_task_ack;

    .line 11
    new-instance v0, Lbq/def/enum_task_ack;

    const-string v1, "error"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lbq/def/enum_task_ack;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbq/def/enum_task_ack;->error:Lbq/def/enum_task_ack;

    .line 12
    new-instance v0, Lbq/def/enum_task_ack;

    const-string/jumbo v1, "unrecognized"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lbq/def/enum_task_ack;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbq/def/enum_task_ack;->unrecognized:Lbq/def/enum_task_ack;

    .line 7
    invoke-static {}, Lbq/def/enum_task_ack;->$values()[Lbq/def/enum_task_ack;

    move-result-object v0

    sput-object v0, Lbq/def/enum_task_ack;->$VALUES:[Lbq/def/enum_task_ack;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbq/def/enum_task_ack;
    .locals 1

    .line 7
    const-class v0, Lbq/def/enum_task_ack;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbq/def/enum_task_ack;

    return-object p0
.end method

.method public static values()[Lbq/def/enum_task_ack;
    .locals 1

    .line 7
    sget-object v0, Lbq/def/enum_task_ack;->$VALUES:[Lbq/def/enum_task_ack;

    invoke-virtual {v0}, [Lbq/def/enum_task_ack;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbq/def/enum_task_ack;

    return-object v0
.end method
