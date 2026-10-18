.class final enum Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;
.super Ljava/lang/Enum;
.source "SysLogTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LogCatType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;

.field public static final enum base:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;

.field public static final enum events:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;

.field public static final enum main:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;

.field public static final enum radio:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;

.field public static final enum system:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;


# instance fields
.field value:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;
    .locals 3

    const/4 v0, 0x5

    .line 342
    new-array v0, v0, [Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;

    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;->base:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;->radio:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;->system:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;->events:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;->main:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 343
    new-instance v0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;

    const-string v1, "base"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;->base:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;

    .line 344
    new-instance v0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;

    const-string v1, "radio"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;->radio:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;

    .line 345
    new-instance v0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;

    const-string/jumbo v1, "system"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1}, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;->system:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;

    .line 346
    new-instance v0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;

    const-string v1, "events"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v1}, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;->events:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;

    .line 347
    new-instance v0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;

    const-string v1, "main"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v1}, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;->main:Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;

    .line 342
    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;->$values()[Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;

    move-result-object v0

    sput-object v0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;->$VALUES:[Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 359
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 360
    iput-object p3, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;
    .locals 1

    .line 342
    const-class v0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;

    return-object p0
.end method

.method public static values()[Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;
    .locals 1

    .line 342
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;->$VALUES:[Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;

    invoke-virtual {v0}, [Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 354
    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/command/syslog/SysLogTask$LogCatType;->value:Ljava/lang/String;

    return-void
.end method
