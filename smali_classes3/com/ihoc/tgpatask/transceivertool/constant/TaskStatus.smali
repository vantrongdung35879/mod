.class public final enum Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;
.super Ljava/lang/Enum;
.source "TaskStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

.field public static final enum DISCARD:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

.field public static final enum DOING:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

.field public static final enum DONE:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

.field public static final enum FAILED:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

.field public static final enum REDO:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

.field public static final enum TODO:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

.field public static final enum UPLOAD:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;


# instance fields
.field private key:I


# direct methods
.method private static synthetic $values()[Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;
    .locals 3

    const/4 v0, 0x7

    .line 3
    new-array v0, v0, [Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->TODO:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->DOING:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->REDO:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->DISCARD:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->FAILED:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->DONE:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->UPLOAD:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 4
    new-instance v0, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const-string v3, "TODO"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->TODO:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    .line 5
    new-instance v0, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    const-string v1, "DOING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->DOING:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    .line 6
    new-instance v0, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    const-string v1, "REDO"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->REDO:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    .line 7
    new-instance v0, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    const-string v1, "DISCARD"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->DISCARD:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    .line 8
    new-instance v0, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    const-string v1, "FAILED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->FAILED:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    .line 9
    new-instance v0, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    const/4 v1, 0x5

    const/16 v2, 0xa

    const-string v3, "DONE"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->DONE:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    .line 10
    new-instance v0, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    const/4 v1, 0x6

    const/16 v2, 0xb

    const-string v3, "UPLOAD"

    invoke-direct {v0, v3, v1, v2}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->UPLOAD:Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    .line 3
    invoke-static {}, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->$values()[Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    move-result-object v0

    sput-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->$VALUES:[Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput p3, p0, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->key:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;
    .locals 1

    .line 3
    const-class v0, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    return-object p0
.end method

.method public static values()[Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;
    .locals 1

    .line 3
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->$VALUES:[Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, [Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;

    return-object v0
.end method


# virtual methods
.method public getKey()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->key:I

    return v0
.end method

.method public getKeyStr()Ljava/lang/String;
    .locals 1

    .line 23
    iget v0, p0, Lcom/ihoc/tgpatask/transceivertool/constant/TaskStatus;->key:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
