.class public Lcom/tencent/mna/w;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field public static final a:Ljava/util/Locale;

.field public static final b:Ljava/util/Locale;

.field public static c:I

.field public static d:Z

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Z

.field public static h:Ljava/lang/String;

.field public static i:I

.field public static j:Ljava/lang/String;

.field public static k:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    sput-object v0, Lcom/tencent/mna/w;->a:Ljava/util/Locale;

    .line 2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Lcom/tencent/mna/w;->b:Ljava/util/Locale;

    const/16 v0, 0x1a

    .line 11
    sput v0, Lcom/tencent/mna/w;->c:I

    .line 15
    const-string v0, "com/tencent/mna/nopackage/"

    sput-object v0, Lcom/tencent/mna/w;->e:Ljava/lang/String;

    .line 16
    const-string v0, "com/tencent/mna_match/nopackage/"

    sput-object v0, Lcom/tencent/mna/w;->f:Ljava/lang/String;

    const/4 v0, 0x0

    .line 19
    sput-boolean v0, Lcom/tencent/mna/w;->g:Z

    .line 20
    const-string v1, ""

    sput-object v1, Lcom/tencent/mna/w;->h:Ljava/lang/String;

    .line 21
    sput v0, Lcom/tencent/mna/w;->i:I

    .line 22
    const-string v0, "control.mna.qq.com"

    sput-object v0, Lcom/tencent/mna/w;->j:Ljava/lang/String;

    const/16 v0, 0x791b

    .line 23
    sput v0, Lcom/tencent/mna/w;->k:I

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "6.3.36_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/tencent/mna/t0;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
