.class final Lcom/uqm/crashsight/crashreport/common/info/c$2;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uqm/crashsight/crashreport/common/info/c;->d(I)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/uqm/crashsight/crashreport/common/info/c;


# direct methods
.method constructor <init>(Lcom/uqm/crashsight/crashreport/common/info/c;)V
    .locals 0

    .line 465
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/c$2;->a:Lcom/uqm/crashsight/crashreport/common/info/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .line 465
    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;

    check-cast p2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;

    .line 1468
    iget-wide v0, p2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->b:J

    iget-wide p1, p1, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->b:J

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x0

    cmp-long v2, v0, p1

    if-lez v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-gez v2, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
