.class final Lcom/uqm/crashsight/crashreport/common/info/c$1;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uqm/crashsight/crashreport/common/info/c;->c(I)[Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/uqm/crashsight/crashreport/common/info/c;


# direct methods
.method constructor <init>(Lcom/uqm/crashsight/crashreport/common/info/c;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/c$1;->a:Lcom/uqm/crashsight/crashreport/common/info/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 292
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    .line 1295
    invoke-virtual {p2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
