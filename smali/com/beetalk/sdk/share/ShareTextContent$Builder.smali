.class public final Lcom/beetalk/sdk/share/ShareTextContent$Builder;
.super Ljava/lang/Object;
.source "ShareTextContent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/share/ShareTextContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShareTextContent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShareTextContent.kt\ncom/beetalk/sdk/share/ShareTextContent$Builder\n+ 2 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n*L\n1#1,107:1\n26#2:108\n*S KotlinDebug\n*F\n+ 1 ShareTextContent.kt\ncom/beetalk/sdk/share/ShareTextContent$Builder\n*L\n43#1:108\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u0003\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004J\u001f\u0010\u0005\u001a\u00020\u00002\u0012\u0010\u0005\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00040\u0006\"\u00020\u0004\u00a2\u0006\u0002\u0010\u000bJ\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0005\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00040\u0006X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0007R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/beetalk/sdk/share/ShareTextContent$Builder;",
        "",
        "()V",
        "content",
        "",
        "hashtags",
        "",
        "[Ljava/lang/String;",
        "link",
        "build",
        "Lcom/beetalk/sdk/share/ShareTextContent;",
        "([Ljava/lang/String;)Lcom/beetalk/sdk/share/ShareTextContent$Builder;",
        "sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private content:Ljava/lang/String;

.field private hashtags:[Ljava/lang/String;

.field private link:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/beetalk/sdk/share/ShareTextContent$Builder;->content:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/beetalk/sdk/share/ShareTextContent$Builder;->link:Ljava/lang/String;

    const/4 v0, 0x0

    .line 108
    new-array v0, v0, [Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/beetalk/sdk/share/ShareTextContent$Builder;->hashtags:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final build()Lcom/beetalk/sdk/share/ShareTextContent;
    .locals 5

    .line 81
    new-instance v0, Lcom/beetalk/sdk/share/ShareTextContent;

    iget-object v1, p0, Lcom/beetalk/sdk/share/ShareTextContent$Builder;->content:Ljava/lang/String;

    iget-object v2, p0, Lcom/beetalk/sdk/share/ShareTextContent$Builder;->link:Ljava/lang/String;

    iget-object v3, p0, Lcom/beetalk/sdk/share/ShareTextContent$Builder;->hashtags:[Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/beetalk/sdk/share/ShareTextContent;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final content(Ljava/lang/String;)Lcom/beetalk/sdk/share/ShareTextContent$Builder;
    .locals 1

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    move-object v0, p0

    check-cast v0, Lcom/beetalk/sdk/share/ShareTextContent$Builder;

    .line 52
    iput-object p1, p0, Lcom/beetalk/sdk/share/ShareTextContent$Builder;->content:Ljava/lang/String;

    return-object p0
.end method

.method public final varargs hashtags([Ljava/lang/String;)Lcom/beetalk/sdk/share/ShareTextContent$Builder;
    .locals 1

    const-string v0, "hashtags"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    move-object v0, p0

    check-cast v0, Lcom/beetalk/sdk/share/ShareTextContent$Builder;

    .line 72
    iput-object p1, p0, Lcom/beetalk/sdk/share/ShareTextContent$Builder;->hashtags:[Ljava/lang/String;

    return-object p0
.end method

.method public final link(Ljava/lang/String;)Lcom/beetalk/sdk/share/ShareTextContent$Builder;
    .locals 1

    const-string v0, "link"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    move-object v0, p0

    check-cast v0, Lcom/beetalk/sdk/share/ShareTextContent$Builder;

    .line 62
    iput-object p1, p0, Lcom/beetalk/sdk/share/ShareTextContent$Builder;->link:Ljava/lang/String;

    return-object p0
.end method
