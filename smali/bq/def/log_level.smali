.class public final enum Lbq/def/log_level;
.super Ljava/lang/Enum;
.source "log_level.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbq/def/log_level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbq/def/log_level;

.field public static final enum debug:Lbq/def/log_level;

.field public static final enum error:Lbq/def/log_level;

.field public static final enum fatal:Lbq/def/log_level;

.field public static final enum info:Lbq/def/log_level;

.field public static final enum verbose:Lbq/def/log_level;

.field public static final enum warning:Lbq/def/log_level;


# direct methods
.method private static synthetic $values()[Lbq/def/log_level;
    .locals 3

    const/4 v0, 0x6

    .line 14
    new-array v0, v0, [Lbq/def/log_level;

    sget-object v1, Lbq/def/log_level;->verbose:Lbq/def/log_level;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lbq/def/log_level;->debug:Lbq/def/log_level;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lbq/def/log_level;->info:Lbq/def/log_level;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lbq/def/log_level;->warning:Lbq/def/log_level;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lbq/def/log_level;->error:Lbq/def/log_level;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lbq/def/log_level;->fatal:Lbq/def/log_level;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 15
    new-instance v0, Lbq/def/log_level;

    const-string/jumbo v1, "verbose"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbq/def/log_level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbq/def/log_level;->verbose:Lbq/def/log_level;

    .line 16
    new-instance v0, Lbq/def/log_level;

    const-string v1, "debug"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lbq/def/log_level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbq/def/log_level;->debug:Lbq/def/log_level;

    .line 17
    new-instance v0, Lbq/def/log_level;

    const-string v1, "info"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lbq/def/log_level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbq/def/log_level;->info:Lbq/def/log_level;

    .line 18
    new-instance v0, Lbq/def/log_level;

    const-string/jumbo v1, "warning"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lbq/def/log_level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbq/def/log_level;->warning:Lbq/def/log_level;

    .line 19
    new-instance v0, Lbq/def/log_level;

    const-string v1, "error"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lbq/def/log_level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbq/def/log_level;->error:Lbq/def/log_level;

    .line 20
    new-instance v0, Lbq/def/log_level;

    const-string v1, "fatal"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lbq/def/log_level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbq/def/log_level;->fatal:Lbq/def/log_level;

    .line 14
    invoke-static {}, Lbq/def/log_level;->$values()[Lbq/def/log_level;

    move-result-object v0

    sput-object v0, Lbq/def/log_level;->$VALUES:[Lbq/def/log_level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbq/def/log_level;
    .locals 1

    .line 14
    const-class v0, Lbq/def/log_level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbq/def/log_level;

    return-object p0
.end method

.method public static values()[Lbq/def/log_level;
    .locals 1

    .line 14
    sget-object v0, Lbq/def/log_level;->$VALUES:[Lbq/def/log_level;

    invoke-virtual {v0}, [Lbq/def/log_level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbq/def/log_level;

    return-object v0
.end method
