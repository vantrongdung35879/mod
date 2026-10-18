.class final enum Lcom/tencent/oaid2/VendorChecker$12;
.super Lcom/tencent/oaid2/VendorChecker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/oaid2/VendorChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0xb

    const/16 v1, 0xa

    .line 1
    const-string v2, "HONOR_TYPE"

    invoke-direct {p0, v2, v0, v1}, Lcom/tencent/oaid2/VendorChecker;-><init>(Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 1
    sget v0, Lcom/tencent/oaid2/VendorChecker;->OS_VERSION:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1

    sget-object v0, Lcom/tencent/oaid2/VendorChecker;->MANUFACTURER:Ljava/lang/String;

    .line 2
    const-string v1, "HONOR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/oaid2/VendorChecker;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
